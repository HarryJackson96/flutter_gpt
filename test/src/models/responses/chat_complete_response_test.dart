import 'package:flutter_gpt/src/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../stubs/stubs.dart';

void main() {
  group('ChatCompleteResponse', () {
    test('fromJson returns correct ChatCompleteResponse object', () {
      final chatCompleteResponse = ChatCompleteResponse.fromJson(
        chatCompleteResponseMapStub,
      );
      expect(chatCompleteResponse.id, 'chatcmpl-76NYynPr3gfOuPJyguoTVj3bYKztj');
      expect(chatCompleteResponse.object, 'chat.completion');
      expect(chatCompleteResponse.created, 1681754900);
      expect(chatCompleteResponse.model, ChatModel.gptTurbo0301.value);
      expect(chatCompleteResponse.choices.length, 1);
      expect(chatCompleteResponse.usage.promptTokens, 36);
      expect(chatCompleteResponse.usage.completionTokens, 15);
      expect(chatCompleteResponse.usage.totalTokens, 51);
    });
  });
}
