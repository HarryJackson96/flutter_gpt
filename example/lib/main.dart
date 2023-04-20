import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OpenAIExample(),
    );
  }
}

// TODO: Add example usage
class OpenAIExample extends StatefulWidget {
  const OpenAIExample({super.key});

  @override
  State<OpenAIExample> createState() => _OpenAIExampleState();
}

class _OpenAIExampleState extends State<OpenAIExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('ChatGPT-Flutter placeholder')],
        ),
      ),
    );
  }
}
