import 'package:chatgpt_flutter/src/models/requests/chat_complete_request/chat_complete_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ChatModelConverter implements JsonConverter<ChatModel, String> {
  const ChatModelConverter();

  @override
  String toJson(ChatModel object) {
    return object.value;
  }

  @override
  ChatModel fromJson(String json) {
    return ChatModel.gptTurbo;
  }
}
