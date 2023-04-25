<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

ChatGPT Flutter
==
<br>
<p align="center">
<img alt="GitHub commit activity" src="https://img.shields.io/github/commit-activity/m/HarryJackson96/chatgpt_flutter">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/HarryJackson96/chatgpt_flutter">
<img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/HarryJackson96/chatgpt_flutter?style=social">
<img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/HarryJackson96/chatgpt_flutter/dart.yml?label=tests">
<img alt="GitHub" src="https://img.shields.io/github/license/HarryJackson96/chatgpt_flutter">
</p>
</br>

ChatGPT_Flutter is an open-source Client for interacting with OpenAI's APIs allowing developers to easily integrate and use OpenAI's AI models into their Flutter/ Dart application.

## Demo
![demo](https://user-images.githubusercontent.com/120326747/234274461-10ec461b-7c1d-4201-ae07-7da40856a764.gif)

## Features

 - [x] [Package installation](#package-installation)
 - [x] [Initalize OpenAI instance](#initialize-openai-instance)
 - [x] [Chat Completions (ChatGPT)]()
    - [x] [With Stream responses (Server Sent Event)](#create-chat-completion-stream)

## Package installation
```dart
chatgpt_flutter: 1.0.0
```

## Initialize OpenAI Instance
- `apiKey`: The OpenAI API uses API keys for authentication. Visit your API keys page to retrieve the API key you'll use in your requests https://platform.openai.com/account/api-keys.
    - If the `apiKey` supplied is empty a `MissingKeyException` will be thrown. Alternatively if the key is invalid a `RequestFailedException` is thrown.
    
    - You must be vigilant about securing these keys. Avoid exposing the API keys in your code or in public repositories; instead, store them in a secure location. You should expose your keys to your application using environment variables or secret management service, so that you don't need to hard-code them in your codebase. Read more in our Best practices for API key safety. https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety.
   
- `organizationId`: You can pass your organizationId to specify which organization is used for an API request. Usage from these API requests will count against the specified organization's subscription quota.
    - If you don't belong to an organization you can ignore this parameter or you can set it up https://platform.openai.com/account/org-settings
```dart
final instance = OpenAI.init(
    configuration: OpenAIConfiguration(
        apiKey: apiKey,
        organizationId: organizationId,
    )
);
```
## Chat Completions (ChatGPT)

Once you have initalized OpenAI, you can then use the instance to create chat completion.

### Create chat completion:
Returns a Future object of type `ChatCompleteResponse`. Note this returns the whole response after the completion request
has finished.
```dart
final chatCompletion = await instance.createChatCompletion({
    request: ChatCompleteRequest({
        model: ChatModel.gptTurbo,
        messages: [
            Message(
                role: MessageRole.user,
                content: 'Hello'
            )
        ]
    })
})
```

### Create chat completion (Stream):
Returns a Stream type `ChatCompleteSSEResponse`. It will return a Stream of values as they are returned from OpenAI as they become available. 

- `debounce` is defaulted to `Duration.zero` but can be used to debounce events emitted from the resulting stream.
```dart
final chatCompletionStream = instance.createChatCompletionStream({
    request: ChatCompleteRequest({
        model: ChatModel.gptTurbo,
        messages: [
            Message(
                role: MessageRole.user,
                content: 'Hello'
            )
        ]
    }),
    debounce: Duration(milliseconds: 300),
});

chatCompletionStream.listen((event)) {
    
}
```

