import 'package:chatgpt_flutter/src/models/responses/chat_complete_sse_reponse/choice_sse/choice_sse.dart';
import 'package:chatgpt_flutter/src/models/shared/usage/usage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_complete_sse_response.freezed.dart';
part 'chat_complete_sse_response.g.dart';

@freezed
class ChatCompleteSSEResponse with _$ChatCompleteSSEResponse {
  const factory ChatCompleteSSEResponse({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<ChoiceSSE> choices,
    Usage? usage,
  }) = _ChatCompleteSSEResponse;

  factory ChatCompleteSSEResponse.fromJson(Map<String, dynamic> json) => _$ChatCompleteSSEResponseFromJson(json);
}
