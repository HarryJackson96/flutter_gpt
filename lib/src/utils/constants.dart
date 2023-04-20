class OpenApiConsts {
  static const baseUrl = 'https://api.openai.com/v1/';
  static const completions = 'chat/completions';
  static const model = 'models';

  static Map<String, String> headers(String token, String? organizationId) {
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
      if (organizationId != null) 'OpenAI-Organization': organizationId,
    };
  }

  ///chat complete 3.5 and gpt-4
  static const kChatGptTurboModel = 'gpt-3.5-turbo'; // gpt 3.5
  static const kChatGptTurbo0301Model = 'gpt-3.5-turbo-0301';
  static const kChatGpt4 = 'gpt-4';
}
