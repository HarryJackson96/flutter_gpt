import 'package:chatgpt_flutter/src/models/models.dart';

const chatCompleteResponseMapStub = {
  'id': 'chatcmpl-76NYynPr3gfOuPJyguoTVj3bYKztj',
  'object': 'chat.completion',
  'created': 1681754900,
  'model': 'gpt-3.5-turbo-0301',
  'usage': {'prompt_tokens': 36, 'completion_tokens': 15, 'total_tokens': 51},
  'choices': [
    {
      'message': {'role': 'assistant', 'content': 'Greetings, how may I assist you?'},
      'finish_reason': 'length',
      'index': 0
    }
  ]
};

final chatCompleteResponseStub = ChatCompleteResponse.fromJson(chatCompleteResponseMapStub);

const chatCompleteRequestMapStub = {
  'model': 'gpt-3.5-turbo',
  'messages': [
    {'role': 'user', 'content': 'Hello'}
  ],
  'max_tokens': 100
};

const chatCompleteRequestStub = ChatCompleteRequest(
  messages: [],
  maxTokens: 200,
);

const chatCompleteSSEResponseMap = {
  'id': 'chatcmpl-76NYynPr3gfOuPJyguoTVj3bYKztj',
  'object': 'chat.completion.chunk',
  'created': 1681754900,
  'model': 'gpt-3.5-turbo-0301',
  'choices': [
    {
      'delta': {'content': 'Hello'},
      'index': 0,
      'finish_reason': null
    }
  ]
};

final chatCompleteSSEResponseList = [
  const ChatCompleteSSEResponse(
    id: 'chatcmpl-774I8',
    object: 'chat.completion.chunk',
    created: 1681918914,
    model: 'chat-gpt-turbo-0301',
    choices: [Choice(message: Message(role: MessageRole.user, content: 'Hi'), finishReason: null, index: 0)],
  ),
  const ChatCompleteSSEResponse(
    id: 'chatcmpl-774I8',
    object: 'chat.completion.chunk',
    created: 1681918914,
    model: 'chat-gpt-turbo-0301',
    choices: [Choice(message: Message(role: MessageRole.user, content: '!'), finishReason: null, index: 0)],
  ),
  const ChatCompleteSSEResponse(
    id: 'chatcmpl-774I8',
    object: 'chat.completion.chunk',
    created: 1681918914,
    model: 'chat-gpt-turbo-0301',
    choices: [Choice(message: Message(role: MessageRole.user, content: ''), finishReason: 'stop', index: 0)],
  ),
];

final chatCompleteSSEResponseStreamStub = Stream.fromIterable(chatCompleteSSEResponseList);

const messageStub = Message(role: MessageRole.user, content: 'Hello');
