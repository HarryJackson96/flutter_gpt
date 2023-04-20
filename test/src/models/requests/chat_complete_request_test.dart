import 'package:chatgpt_flutter/src/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../stubs/stubs.dart';

void main() {
  group('ChatCompleteRequest', () {
    test('fromJson', () {
      final chatCompleteResponse = ChatCompleteRequest.fromJson(
        chatCompleteRequestMapStub,
      );
      expect(chatCompleteResponse.model, ChatModel.gptTurbo);
      expect(chatCompleteResponse.maxTokens, 100);
      expect(chatCompleteResponse.messages.length, 1);
    });
  });
}
