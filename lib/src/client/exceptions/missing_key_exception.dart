
/// {@template missing_token_exception}
/// This `Exception` is thrown when a token (API key) is not supplied.
/// {@endtemplate}
class MissingKeyException implements Exception {
  final String? message;

  /// {@macro missing_token_exception}
  MissingKeyException(this.message);

  @override
  String toString() => 'message: $message';
}
