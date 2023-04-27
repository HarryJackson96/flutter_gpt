import 'package:flutter_gpt/src/utils/constants.dart';
import 'package:flutter_test/flutter_test.dart';

const mockToken = 'sh-suhcqde';
const mockOrganizationId = 'organization';

const mockCompleteToken = 'Bearer $mockToken';

void main() {
  group('OpenAIConsts', () {
    group('headers', () {
      test('injects token and organizationId', () {
        final headers = OpenApiConsts.headers(mockToken, mockOrganizationId);
        expect(headers.containsValue(mockCompleteToken), true);
        expect(headers.containsValue(mockOrganizationId), true);
      });

      test('injects only token when organizationId is null', () {
        final headers = OpenApiConsts.headers(mockToken, null);
        expect(headers.containsValue(mockCompleteToken), true);
        expect(headers.containsValue(mockOrganizationId), false);
      });
    });
  });
}
