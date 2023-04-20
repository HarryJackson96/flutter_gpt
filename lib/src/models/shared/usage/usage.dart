import 'package:freezed_annotation/freezed_annotation.dart';
part 'usage.freezed.dart';
part 'usage.g.dart';

@freezed
class Usage with _$Usage {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Usage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
