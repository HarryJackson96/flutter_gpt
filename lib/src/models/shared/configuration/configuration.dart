import 'package:freezed_annotation/freezed_annotation.dart';
part 'configuration.freezed.dart';

@freezed
class OpenAIConfiguration with _$OpenAIConfiguration {
  const factory OpenAIConfiguration({
    required String apiKey,
    String? organizationId,
  }) = _OpenAIConfiguration;
}
