import 'package:chatgpt_flutter/src/models/shared/message/message.dart';
import 'package:chatgpt_flutter/src/utils/constants.dart';
import 'package:chatgpt_flutter/src/utils/converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_complete_request.freezed.dart';
part 'chat_complete_request.g.dart';

enum ChatModel {
  gptTurbo(OpenApiConsts.kChatGptTurbo0301Model);

  final String value;
  const ChatModel(this.value);
}

@freezed
@immutable
class ChatCompleteRequest with _$ChatCompleteRequest {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatCompleteRequest({
    @ChatModelConverter() @Default(ChatModel.gptTurbo) ChatModel model,
    required List<Message> messages,
    @Default(100) int maxTokens,
  }) = _ChatCompleteRequest;

  factory ChatCompleteRequest.fromJson(Map<String, dynamic> json) => _$ChatCompleteRequestFromJson(json);
}
