import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

enum ChatMessageRole {
  user,
  assistant,
  system,
}

/// [ChatMessageRole] The role of the message being sent
///
/// - [ChatMessageRole.system] - Defines the defualt behaviour of the assistant. Typically the system message is sent first
/// followed by alternating user and assistant messages.
///
/// - [ChatMessageRole.user] - Defines a message sent from the client (user).
///
/// - [ChatMessageRole.assistant] - Defines a message sent from the server (assistant).
///
/// #### Example:
/// ```dart
///   ChatMessage(role: ChatMessageRole.system, content: "You are Jedi Master")
///   ChatMessage(role: ChatMessageRole.user, content: "Hello")
///   ChatMessage(role: ChatMessageRole.admin, content: "Hello there! May the Force be with you.")
/// ```
@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    @Default(ChatMessageRole.user) ChatMessageRole role,
    required String content,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}
