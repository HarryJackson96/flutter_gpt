import 'package:chatgpt_flutter/src/models/shared/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'choice.freezed.dart';
part 'choice.g.dart';

@freezed
class Choice with _$Choice {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Choice({
    Message? message,
    String? finishReason,
    required int index,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}
