import 'package:chatgpt_flutter/src/models/shared/shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_complete_response.freezed.dart';
part 'chat_complete_response.g.dart';

@freezed
class ChatCompleteResponse with _$ChatCompleteResponse {
  const factory ChatCompleteResponse({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<Choice> choices,
    required Usage usage,
  }) = _ChatCompleteResponse;

  factory ChatCompleteResponse.fromJson(Map<String, dynamic> json) => _$ChatCompleteResponseFromJson(json);
}
