import 'package:flutter_gpt/src/models/shared/choice/choice.dart';
import 'package:flutter_gpt/src/models/shared/usage/usage.dart';

class ChatCompleteSSEResponse {
  final String id;
  final String object;
  final int created;
  final String model;
  final List<Choice> choices;
  final Usage? usage;

  const ChatCompleteSSEResponse({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    this.usage,
  });

  factory ChatCompleteSSEResponse.fromJson(Map<String, dynamic> json) {
    return ChatCompleteSSEResponse(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      choices: List<Choice>.from(json['choices'].map((x) => Choice.fromJson(x))),
      usage: json['usage'] != null ? Usage.fromJson(json['usage']) : null,
    );
  }
}
