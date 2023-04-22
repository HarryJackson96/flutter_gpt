import 'package:chatgpt_flutter/src/models/shared/message/message.dart';
import 'package:chatgpt_flutter/src/utils/constants.dart';

enum ChatModel {
  gptTurbo(OpenApiConsts.gptTurboModel),
  gptTurbo0301(OpenApiConsts.gptTurbo0301Model);

  final String value;
  const ChatModel(this.value);
}

class ChatCompleteRequest {
  /// [model] is the ID of model used for completions.ˆ
  final ChatModel model;

  /// [messages] is the list of Messages describing the conversation so far.
  final List<Message> messages;

  /// [maxTokens] are the maximum number of tokens to generate in the chat completion.
  ///
  /// The total length of input tokens and generated tokens is limited by the model's context length.
  final int maxTokens;

  /// [topP] An alternative to sampling with temperature, called nucleus sampling, where the model
  /// considers the results of the tokens with top_p probability mass.
  /// So 0.1 means only the tokens comprising the top 10% probability mass are considered.
  ///
  /// It is recommended this or temperature but not both.
  final double? topP;

  /// [temperature] what sampling temperature to use, must be a value between 0 and 2.
  /// Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
  ///
  /// It is recommended altering this or top_p but not both.
  final double? temperature;

  /// [n] defines how many chat completion choices to generate for each input message.
  ///
  /// Must be a minimum value of 0
  final int? n;

  /// [user] is a unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse.
  ///
  /// Learn more: https://platform.openai.com/docs/guides/safety-best-practices/end-user-ids
  final String? user;

  /// [stop] represents words up to 4 sequences where the API will stop generating further tokens.
  final List<String>? stop;

  /// [presencePenalty] must be a value between -2.0 and 2.0.
  ///
  /// Positive values penalize new tokens based on whether they appear in the text so far, i
  /// ncreasing the model's likelihood to talk about new topics.
  final double presencePenalty;

  /// [frequencyPenalty] must be a value between -2.0 and 2.0.
  /// Positive values penalize new tokens based on their existing frequency in the text so far,
  /// decreasing the model's likelihood to repeat the same line verbatim.
  final double frequencyPenalty;

  const ChatCompleteRequest({
    this.model = ChatModel.gptTurbo0301,
    required this.messages,
    required this.maxTokens,
    this.topP = 1,
    this.temperature = 1.0,
    this.n = 1,
    this.user,
    this.stop,
    this.presencePenalty = 0.0,
    this.frequencyPenalty = 0.0,
  })  : assert(
          presencePenalty <= 2.0 && presencePenalty >= -2.0,
          'presencePenalty must be a value between -2.0 and 2.0',
        ),
        assert(
          frequencyPenalty <= 2.0 && frequencyPenalty >= -2.0,
          'frequencyPenalty must be a value between -2.0 and 2.0',
        ),
        assert(
          temperature == null || (temperature >= 0.0 && temperature <= 2.0),
          'temperature must be a value between 0.0 and 2.0',
        );

  Map<String, dynamic> toJson() {
    return {
      'model': model.value,
      'messages': messages,
      'max_tokens': maxTokens,
      'temperature': temperature,
      'top_p': topP,
      'n': n,
      'user': user,
      'stop': stop,
      'presence_penalty': presencePenalty,
      'frequency_penalty': frequencyPenalty,
    };
  }
}
