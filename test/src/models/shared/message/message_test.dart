import 'package:chatgpt_flutter/src/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../stubs/stubs.dart';

void main() {
  group('Message', () {
    test('toJson returns expected map', () {
      final expectedMessageMap = {'role': 'user', 'content': 'Hello'};
      expect(messageStub.toJson(), expectedMessageMap);
    });

    test('fromJson returns expected Message object', () {
      final expectedMessageMap = {'role': 'user', 'content': 'Hello'};
      final message = Message.fromJson(expectedMessageMap);
      expect(message.content, messageStub.content);
      expect(message.role, messageStub.role);
    });
  });
}
