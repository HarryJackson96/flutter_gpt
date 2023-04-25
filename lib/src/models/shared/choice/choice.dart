import 'package:chatgpt_flutter/src/models/shared/message/message.dart';

class Choice {
  final int index;
  final Message? message;
  final String? finishReason;

  const Choice({
    required this.index,
    this.message,
    this.finishReason,
  });

  factory Choice.fromJson(Map<String, dynamic> json) {
    return Choice(
      message: json['message'] != null
          ? Message.fromJson(json['message'])
          : json['delta'] != null
              ? Message.fromJson(json['delta'])
              : null,
      finishReason: json['finish_reason'],
      index: json['index'],
    );
  }
}
