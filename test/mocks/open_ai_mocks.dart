import 'package:dio/dio.dart';
import 'package:flutter_gpt/src/client/open_ai_client.dart';
import 'package:flutter_gpt/src/models/shared/configuration/open_ai_configuration.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  Dio,
  RequestOptions,
  OpenAIConfiguration,
  OpenAIClient,
])
void generateMocks() {}
