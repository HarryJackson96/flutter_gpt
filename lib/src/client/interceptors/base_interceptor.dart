import 'package:dio/dio.dart';
import 'package:flutter_gpt/src/models/shared/configuration/open_ai_configuration.dart';
import 'package:flutter_gpt/src/utils/constants.dart';

class BaseInterceptor extends Interceptor {
  final OpenAIConfiguration _configuration;

  const BaseInterceptor(this._configuration);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      OpenApiConsts.headers(
        _configuration.apiKey,
        _configuration.organizationId,
      ),
    );
    super.onRequest(options, handler);
  }
}
