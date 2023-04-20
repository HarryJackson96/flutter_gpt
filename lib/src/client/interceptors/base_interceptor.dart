import 'package:chatgpt_flutter/src/models/shared/configuration/configuration.dart';
import 'package:chatgpt_flutter/src/utils/constants.dart';
import 'package:dio/dio.dart';

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
