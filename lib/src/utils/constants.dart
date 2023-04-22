class OpenApiConsts {
  static const baseUrl = 'https://api.openai.com/v1/';
  static const completions = 'chat/completions';
  static const models = 'models';

  static Map<String, String> headers(String token, String? organizationId) {
    return {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
      if (organizationId != null) 'OpenAI-Organization': organizationId,
    };
  }

  // Chat Completions
  static const gptTurboModel = 'gpt-3.5-turbo';
  static const gptTurbo0301Model = 'gpt-3.5-turbo-0301';

  /// In limited beta and only accessible for those who have been granted access.
  /// https://platform.openai.com/docs/models/gpt-4
  static const gpt4 = 'gpt-4';
}
