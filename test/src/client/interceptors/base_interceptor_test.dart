import 'package:dio/dio.dart';
import 'package:flutter_gpt/src/client/interceptors/base_interceptor.dart';
import 'package:flutter_gpt/src/utils/constants.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks/open_ai_mocks.mocks.dart';

const mockToken = 'sh-suhcqde';
const mockOrganizationId = 'organization';

const mockCompleteToken = 'Bearer $mockToken';
void main() {
  late BaseInterceptor baseInterceptor;
  late MockOpenAIConfiguration mockConfiguration;
  late MockRequestOptions mockRequestOptions;

  setUp(() {
    mockConfiguration = MockOpenAIConfiguration();
    baseInterceptor = BaseInterceptor(mockConfiguration);
    mockRequestOptions = MockRequestOptions();
    when(mockConfiguration.apiKey).thenReturn(mockToken);
    when(mockConfiguration.organizationId).thenReturn(null);
    when(mockRequestOptions.headers).thenReturn({});
  });

  group('BaseInterceptor', () {
    group('onRequest', () {
      test('sets headers correctly', () {
        baseInterceptor.onRequest(
          mockRequestOptions,
          RequestInterceptorHandler(),
        );
        expect(mockRequestOptions.headers, equals(OpenApiConsts.headers(mockToken, null)));
      });
    });
  });
}
