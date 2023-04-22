class OpenAIConfiguration {
  /// The OpenAI API uses the [apiKey] for authentication.
  /// Visit your API Keys page to retrieve the API key you'll use in your requests.
  final String apiKey;

  /// For users who belong to multiple organizations, you can pass a header to
  /// specify which organization [organizationId] is used for an API request.
  /// Usage from these API requests will count against the specified organization's subscription quota.
  final String? organizationId;

  const OpenAIConfiguration({
    required this.apiKey,
    this.organizationId,
  });
}
