/// {@template request_failed_exception}
/// This exception is thrown when a API request fails.
/// {@endtemplate}
class RequestFailedException implements Exception {
  final String? message;
  final int? code;

  ///{@macro request_failed_exception}
  RequestFailedException({this.message, this.code});

  @override
  String toString() => 'status code: $code message: $message';
}
