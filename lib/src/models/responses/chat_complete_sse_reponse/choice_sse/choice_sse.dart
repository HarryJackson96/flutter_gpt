import 'package:chatgpt_flutter/src/models/shared/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'choice_sse.freezed.dart';
part 'choice_sse.g.dart';

@freezed
class ChoiceSSE with _$ChoiceSSE {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChoiceSSE({
    @JsonKey(name: 'delta') Message? message,
    String? finishReason,
    required int index,
  }) = _ChoiceSSE;

  factory ChoiceSSE.fromJson(Map<String, dynamic> json) => _$ChoiceSSEFromJson(json);
}
