/// [MessageRole] The role of the message being sent
///
/// - [MessageRole.system] - Defines the defualt behaviour of the assistant. Typically the system message is sent first
/// followed by alternating user and assistant messages.
///
/// - [MessageRole.user] - Defines a message sent from the client (user).
///
/// - [MessageRole.assistant] - Defines a message sent from the server (assistant).
///
/// #### Example:
/// ```dart
///   ChatMessage(role: MessageRole.system, content: "You are Jedi Master")
///   ChatMessage(role: MessageRole.user, content: "Hello")
///   ChatMessage(role: MessageRole.admin, content: "Hello there! May the Force be with you.")
/// ```
enum MessageRole { user, assistant, system }

class Message {
  final MessageRole role;
  final String content;

  const Message({
    required this.role,
    required this.content,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      role: MessageRole.values.firstWhere(
        (element) => element.name == json['role'],
        orElse: () => MessageRole.assistant,
      ),
      content: json['content'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role.name,
      'content': content,
    };
  }
}
