import 'dart:async';
import 'dart:convert';
import 'package:chatgpt_flutter/src/client/exceptions/exceptions.dart';
import 'package:chatgpt_flutter/src/client/transformers/stream_transformer.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

class OpenAIClient {
  final Dio _dio;

  const OpenAIClient(
    this._dio,
  );

  Future<T> post<T>(
    String url,
    Map<String, dynamic> request,
    T Function(Map<String, dynamic>) onSuccess,
  ) async {
    try {
      final response = await _dio.post(
        url,
        data: request,
      );

      if (response.statusCode == 200) {
        return onSuccess(response.data);
      } else {
        throw RequestFailedException(
          message: '${response.data}',
          code: response.statusCode,
        );
      }
    } on DioError catch (err) {
      throw RequestFailedException(
        code: err.response?.statusCode,
        message: err.message,
      );
    }
  }

  Stream<T> postStream<T>(
    String url,
    Map<String, dynamic> request,
    T Function(Map<String, dynamic>) onSuccess, {
    Duration debounce = Duration.zero,
  }) {
    final controller = StreamController<T>.broadcast();

    _dio.post<ResponseBody>(url, data: json.encode(request), options: Options(responseType: ResponseType.stream)).then(
      (response) {
        final data = response.data;
        if (data != null) {
          controller.addStream(
            data.stream
                .asyncExpand((event) => Rx.timer(event, debounce))
                .transform(unit8Transformer)
                .transform(const Utf8Decoder())
                .transform(const LineSplitter())
                .transform(responseTransformer(onSuccess)),
          );
        }
      },
      onError: (error) {
        controller.sink.addError(error);
      },
    );

    return controller.stream;
  }
}
