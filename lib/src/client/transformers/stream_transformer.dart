import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

class _StreamTransformerConsts {
  static const endOfStream = '[DONE]';
}

StreamTransformer<Uint8List, List<int>> unit8Transformer =
    StreamTransformer.fromHandlers(
  handleData: (data, sink) => sink.add(List<int>.from(data)),
);

StreamTransformer<String, T> responseTransformer<T>(
  T Function(Map<String, dynamic>) onSuccess,
) =>
    StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        if (data.isNotEmpty) {
          final jsonString = data.replaceAll('data: ', '');
          if (_StreamTransformerConsts.endOfStream != jsonString) {
            final json = jsonDecode(jsonString);
            sink.add(onSuccess(json));
          }
        }
      },
      handleDone: (sink) {
        sink.close();
      },
      handleError: (error, stackTrace, sink) {
        sink.addError(error, stackTrace);
      },
    );
