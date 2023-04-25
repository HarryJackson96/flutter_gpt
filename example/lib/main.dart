import 'package:chatgpt_flutter/chatgpt_flutter.dart';
import 'package:flutter/material.dart';

// Simple model for encapsulating message data.
class ChatMessage {
  final StringBuffer message;
  final MessageRole role;

  const ChatMessage({
    required this.message,
    this.role = MessageRole.user,
  });
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ChatGPT Demo',
      debugShowCheckedModeBanner: false,
      home: OpenAIExample(),
    );
  }
}

class OpenAIExample extends StatefulWidget {
  const OpenAIExample({
    super.key,
  });

  @override
  State<OpenAIExample> createState() => _OpenAIExampleState();
}

class _OpenAIExampleState extends State<OpenAIExample> {
  late TextEditingController _controller;
  var chatMessages = <ChatMessage>[];
  bool isLoading = false;
  late OpenAI _openAI;

  @override
  void initState() {
    _controller = TextEditingController();
    // Initialize and create OpenAI instance.
    _openAI = OpenAI.init(
      configuration: const OpenAIConfiguration(
        // Add API KEY.
        apiKey: 'ENTER API KEY',
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'ChatGPT Flutter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: chatMessages.length,
                itemBuilder: (context, index) {
                  final chatMessage = chatMessages[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChatBubble(
                        message: chatMessage.message.toString(),
                        role: chatMessage.role,
                        isLoading: chatMessage.message.isEmpty,
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _controller,
                      minLines: 1,
                      maxLines: 2,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        filled: true,
                        enabled: !isLoading,
                        fillColor: const Color.fromARGB(255, 232, 232, 232),
                        hintText: 'Enter message',
                        enabledBorder: _border,
                        disabledBorder: _border,
                        focusedBorder: _border,
                        isDense: true,
                      ),
                      onFieldSubmitted: (value) => _sendMessage(value),
                    ),
                  ),
                  const SizedBox(width: 12),
                  RawMaterialButton(
                    onPressed: () => _sendMessage(_controller.text),
                    constraints: const BoxConstraints.tightFor(height: 48),
                    fillColor: Colors.black,
                    visualDensity: VisualDensity.comfortable,
                    padding: const EdgeInsets.all(14),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage(String message, {bool streamedResponse = true}) {
    // reset controller.
    _controller.clear();

    if (message.isNotEmpty) {
      setState(() {
        chatMessages.insertAll(0, [
          ChatMessage(
            message: StringBuffer(),
            role: MessageRole.assistant,
          ),
          ChatMessage(message: StringBuffer(message)),
        ]);
      });

      isLoading = true;
      if (streamedResponse) {
        _getStreamedMessage(message);
      } else {
        _getFutureMessage(message);
      }
    }
  }

  /// Displays whole message when Future completes successfully.
  Future<void> _getFutureMessage(String message) async {
    try {
      final messageResponse = await _openAI.createChatCompletion(
        request: _createRequest(message),
      );
      setState(() {
        chatMessages.first.message.write(
          messageResponse.choices.first.message?.content,
        );
        isLoading = false;
      });
    } catch (e) {
      _handleError();
    }
  }

  void _getStreamedMessage(String message) {
    // Create chatCompletionStream and set debounce duration.
    final stream = _openAI.createChatCompletionStream(
      request: _createRequest(message),
      debounce: const Duration(milliseconds: 100),
    );

    stream.listen(
      (event) {
        setState(() {
          chatMessages.first.message.write(
            event.choices.first.message?.content,
          );
          if (event.choices.first.finishReason != null) {
            isLoading = false;
          }
        });
      },
      onError: (error) {
        _handleError();
      },
    );
  }

  _handleError() {
    setState(() {
      chatMessages.first.message.write('error');
      isLoading = false;
    });
  }

  ChatCompleteRequest _createRequest(String message) {
    return ChatCompleteRequest(
      model: ChatModel.gptTurbo,
      messages: [
        Message(role: MessageRole.user, content: message),
      ],
      maxTokens: 300,
    );
  }

  InputBorder get _border {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final MessageRole role;
  final bool isLoading;

  const ChatBubble({
    required this.message,
    this.role = MessageRole.user,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: role == MessageRole.user
          ? Colors.transparent
          : const Color.fromARGB(255, 232, 232, 232),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: role == MessageRole.user
                  ? const Color.fromARGB(255, 11, 133, 232)
                  : const Color.fromARGB(255, 0, 0, 0),
            ),
            child: Center(
              child: Text(
                role == MessageRole.user ? 'ME' : 'AI',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 4.0,
              ),
              child: message.isEmpty
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                        strokeWidth: 2,
                      ),
                    )
                  : Text(message),
            ),
          ),
        ],
      ),
    );
  }
}
