import 'package:flutter_gpt/src/client/exceptions/missing_key_exception.dart';
import 'package:flutter_gpt/src/models/models.dart';
import 'package:flutter_gpt/src/open_ai.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/open_ai_mocks.mocks.dart';
import '../stubs/stubs.dart';

const mockToken = 'sk-1234';

void main() {
  late MockOpenAIConfiguration mockOpenAIConfiguration;
  late MockOpenAIClient mockClient;
  late OpenAI openAI;

  setUp(() {
    mockOpenAIConfiguration = MockOpenAIConfiguration();
    mockClient = MockOpenAIClient();
    when(mockOpenAIConfiguration.apiKey).thenReturn(mockToken);
    openAI = OpenAI.init(
      configuration: mockOpenAIConfiguration,
    )..setClient(mockClient);
  });

  group('OpenAI', () {
    group('intialise OpenAI', () {
      test('throws MissingKeyException when API key is empty.', () {
        when(mockOpenAIConfiguration.apiKey).thenReturn('');
        try {
          OpenAI.init(
            configuration: mockOpenAIConfiguration,
          );
        } catch (e) {
          expect(e, isA<MissingKeyException>());
          expect(
            e.toString(),
            'message: Please supply a valid API key! https://platform.openai.com/docs/quickstart/add-your-api-key',
          );
        }
      });

      test('returns OpenAI instance when token is not empty.', () {
        expect(
          OpenAI.init(
            configuration: mockOpenAIConfiguration,
          ),
          isA<OpenAI>(),
        );
      });
    });

    group('createChatCompletion', () {
      test('returns ChatCompleteResponse', () async {
        when(mockClient.post<ChatCompleteResponse>(any, any, any)).thenAnswer(
          (_) async => chatCompleteResponseStub,
        );
        final actualResponse = await openAI.createChatCompletion(request: chatCompleteRequestStub);
        expect(chatCompleteResponseStub, actualResponse);
        verify(mockClient.post(any, any, any)).called(1);
      });
    });

    group('createChatCompletionStream', () {
      test('emits Stream of type ChatCompleteSSEResponse', () async {
        when(mockClient.postStream<ChatCompleteSSEResponse>(any, any, any)).thenAnswer(
          (_) => chatCompleteSSEResponseStreamStub,
        );

        final actualResponse = openAI.createChatCompletionStream(request: chatCompleteRequestStub);
        expect(
          actualResponse,
          emitsInOrder(
            [
              ...chatCompleteSSEResponseList,
              emitsDone,
            ],
          ),
        );
        verify(mockClient.postStream(any, any, any)).called(1);
      });
    });
  });
}
