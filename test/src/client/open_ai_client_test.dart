import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_gpt/src/client/exceptions/request_failed_exception.dart';
import 'package:flutter_gpt/src/client/open_ai_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/open_ai_mocks.mocks.dart';
import '../../stubs/stubs.dart';

void main() {
  const errorMessage = 'Not Found';
  const errorCode = 404;
  group('OpenAIClient', () {
    late MockDio mockDio;
    late MockRequestOptions mockRequestOptions;
    late OpenAIClient openAIClient;

    setUp(() {
      mockDio = MockDio();
      mockRequestOptions = MockRequestOptions();
      openAIClient = OpenAIClient(mockDio);
    });

    group('post', () {
      void verifyAndExpectRequestFailedException() {
        expect(
          () async => await openAIClient.post('', chatCompleteResponseMapStub, (p0) => p0),
          throwsA(
            isA<RequestFailedException>()
                .having((e) => e.message, 'message', errorMessage)
                .having((e) => e.code, 'statusCode', errorCode)
                .having((e) => e.toString(), 'message', 'status code: $errorCode message: $errorMessage'),
          ),
        );
        verify(mockDio.post(any, data: anything)).called(1);
      }

      test('makes correct http request', () async {
        when(mockDio.post(any, data: chatCompleteResponseMapStub)).thenAnswer(
          (_) async => Response(
            statusCode: 200,
            requestOptions: mockRequestOptions,
            data: chatCompleteResponseMapStub,
          ),
        );

        final result = await openAIClient.post('', chatCompleteResponseMapStub, (p0) => p0);
        expect(result, chatCompleteResponseMapStub);
        verify(mockDio.post(any, data: anything)).called(1);
      });

      test('throws RequestFailedException on non-200 response and injects data/ statusCode', () async {
        when(mockDio.post(any, data: anyNamed('data'))).thenAnswer(
          (_) async => Response(
            statusCode: errorCode,
            requestOptions: mockRequestOptions,
            data: errorMessage,
          ),
        );
        verifyAndExpectRequestFailedException();
      });

      test('throws RequestFailedException on DioError and injects message/ statusCode', () async {
        when(mockDio.post(any, data: anyNamed('data'))).thenThrow(
          DioError(
            requestOptions: mockRequestOptions,
            response: Response(requestOptions: mockRequestOptions, statusCode: 404),
            stackTrace: StackTrace.fromString(errorMessage),
            message: errorMessage,
          ),
        );
        verifyAndExpectRequestFailedException();
      });
    });

    group('postStream', () {
      test('returns stream of T on success', () async {
        when(
          mockDio.post<ResponseBody>(
            any,
            data: json.encode(chatCompleteRequestMapStub),
            options: anyNamed('options'),
          ),
        ).thenAnswer((_) async {
          return Response<ResponseBody>(
            data: ResponseBody.fromString(jsonEncode(chatCompleteResponseMapStub), 200),
            requestOptions: mockRequestOptions,
          );
        });

        final stream = openAIClient.postStream('', chatCompleteRequestMapStub, (data) => data);
        expectLater(stream, emits(chatCompleteResponseMapStub));
      });

      test('emits error on DioError', () async {
        when(mockDio.post<ResponseBody>(any, data: anyNamed('data'), options: anyNamed('options'))).thenAnswer(
          (_) async => Future.error(
            DioError(
              error: errorMessage,
              requestOptions: mockRequestOptions,
              stackTrace: StackTrace.fromString(errorMessage),
            ),
            StackTrace.fromString(errorMessage),
          ),
        );

        expectLater(
          openAIClient.postStream('', chatCompleteRequestMapStub, (data) => data),
          emitsError(isInstanceOf<DioError>().having((e) => e.error, 'error', errorMessage)),
        );
      });
    });
  });
}
