import 'package:flutter_gpt/src/models/requests/chat_complete_request/chat_complete_request.dart';
import 'package:flutter_gpt/src/models/responses/chat_complete_sse_reponse/chat_complete_sse_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../stubs/stubs.dart';

void main() {
  group('ChatCompleteSSEResponse', () {
    test('fromJson returns correct ChatCompleteSSEResponse object', () {
      final chatCompleteResponse = ChatCompleteSSEResponse.fromJson(
        chatCompleteSSEResponseMap,
      );
      expect(chatCompleteResponse.id, 'chatcmpl-76NYynPr3gfOuPJyguoTVj3bYKztj');
      expect(chatCompleteResponse.object, 'chat.completion.chunk');
      expect(chatCompleteResponse.created, 1681754900);
      expect(chatCompleteResponse.model, ChatModel.gptTurbo0301.value);
      expect(chatCompleteResponse.choices.length, 1);
      expect(chatCompleteResponse.usage, null);
    });
  });
}
