import 'package:chatgpt_flutter/src/client/exceptions/exceptions.dart';
import 'package:chatgpt_flutter/src/client/interceptors/base_interceptor.dart';
import 'package:chatgpt_flutter/src/client/open_ai_client.dart';
import 'package:chatgpt_flutter/src/models/models.dart';
import 'package:chatgpt_flutter/src/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class IOpenAI {
  Future<ChatCompleteResponse> createChatCompletion({
    required ChatCompleteRequest request,
  });
  Stream<ChatCompleteSSEResponse?> createChatCompletionStream({
    required ChatCompleteRequest request,
  });
}

class OpenAI implements IOpenAI {
  OpenAI._();

  /// Initializes and returns [OpenAI] instance.
  ///
  /// [configuration] handles injecting apiKey and organizationId.
  factory OpenAI.init({
    required OpenAIConfiguration configuration,
  }) {
    final instance = OpenAI._().._initialize(configuration);
    return instance;
  }

  late OpenAIClient _client;

  /// Returns a Future object of type [ChatCompleteResponse] from a new or existing chat conversation.
  @override
  Future<ChatCompleteResponse> createChatCompletion({
    required ChatCompleteRequest request,
  }) async {
    return _client.post(OpenApiConsts.completions, request.toJson(), (data) {
      return ChatCompleteResponse.fromJson(data);
    });
  }

  /// Returns a Stream of type [ChatCompleteSSEResponse] from a new or existing chat conversation.
  /// Tokens are sent as data-only server-sent-events (SSE) as they become available. The stream is
  /// terminated by a data: [DONE] message.
  ///
  /// [debounce] defines the delay duration on the [Stream] such that items from the source are only
  /// emitted after the [debounce] duration passes.
  @override
  Stream<ChatCompleteSSEResponse> createChatCompletionStream({
    required ChatCompleteRequest request,
    Duration debounce = Duration.zero,
  }) {
    return _client.postStream(
      OpenApiConsts.completions,
      request.toJson()..addAll({'stream': true}),
      (data) {
        return ChatCompleteSSEResponse.fromJson(data);
      },
      debounce: debounce,
    );
  }

  void _initialize(
    OpenAIConfiguration configuration,
  ) {
    if (configuration.apiKey.isEmpty) {
      throw MissingKeyException(
        'Please supply a valid API key! https://platform.openai.com/docs/quickstart/add-your-api-key',
      );
    }
    final dio = Dio(
      BaseOptions(
        baseUrl: OpenApiConsts.baseUrl,
      ),
    )..interceptors.add(BaseInterceptor(configuration));
    _client = OpenAIClient(dio);
  }

  /// Setter method for testing purposes.
  @visibleForTesting
  void setClient(OpenAIClient client) {
    _client = client;
  }
}
