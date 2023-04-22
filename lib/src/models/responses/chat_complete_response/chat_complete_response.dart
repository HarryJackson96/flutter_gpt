import 'package:chatgpt_flutter/src/models/shared/shared.dart';

class ChatCompleteResponse {
  final String id;
  final String object;
  final int created;
  final String model;
  final List<Choice> choices;
  final Usage usage;

  const ChatCompleteResponse({
    required this.id,
    required this.object,
    required this.created,
    required this.model,
    required this.choices,
    required this.usage,
  });

  factory ChatCompleteResponse.fromJson(Map<String, dynamic> json) {
    return ChatCompleteResponse(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      model: json['model'],
      choices: List<Choice>.from(json['choices'].map((x) => Choice.fromJson(x))),
      usage: Usage.fromJson(json['usage']),
    );
  }
}
