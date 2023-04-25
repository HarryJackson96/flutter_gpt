class ClientSetup {
  final Duration sendTimeout;
  final Duration connectTimeout;
  final Duration receiveTimeout;

  ClientSetup({
    this.sendTimeout = const Duration(seconds: 5),
    this.connectTimeout = const Duration(seconds: 5),
    this.receiveTimeout = const Duration(seconds: 5),
  });
}
