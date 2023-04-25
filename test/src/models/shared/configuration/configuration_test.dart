import 'package:chatgpt_flutter/chatgpt_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OpenAIConfiguation', () {
    test('creates correct instance of OpenAIConfiguration', () {
      const configuration = OpenAIConfiguration(apiKey: 'apiKey', organizationId: 'orgID');
      expect(configuration.apiKey, 'apiKey');
      expect(configuration.organizationId, 'orgID');
    });
  });
}
