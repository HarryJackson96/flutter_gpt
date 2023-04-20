import 'package:freezed_annotation/freezed_annotation.dart';
part 'message.freezed.dart';
part 'message.g.dart';

enum MessageRole {
  @JsonKey(name: 'user')
  user,
  @JsonKey(name: 'assistant')
  assistant,
  @JsonKey(name: 'system')
  system
}

@freezed
class Message with _$Message {
  const factory Message({
    @Default(MessageRole.user) MessageRole role,
    @Default('') String content,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}
