// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_complete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCompleteRequest _$ChatCompleteRequestFromJson(Map<String, dynamic> json) {
  return _ChatCompleteRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatCompleteRequest {
  @ChatModelConverter()
  ChatModel get model => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  int get maxTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompleteRequestCopyWith<ChatCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompleteRequestCopyWith<$Res> {
  factory $ChatCompleteRequestCopyWith(
          ChatCompleteRequest value, $Res Function(ChatCompleteRequest) then) =
      _$ChatCompleteRequestCopyWithImpl<$Res, ChatCompleteRequest>;
  @useResult
  $Res call(
      {@ChatModelConverter() ChatModel model,
      List<Message> messages,
      int maxTokens});
}

/// @nodoc
class _$ChatCompleteRequestCopyWithImpl<$Res, $Val extends ChatCompleteRequest>
    implements $ChatCompleteRequestCopyWith<$Res> {
  _$ChatCompleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? maxTokens = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChatModel,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatCompleteRequestCopyWith<$Res>
    implements $ChatCompleteRequestCopyWith<$Res> {
  factory _$$_ChatCompleteRequestCopyWith(_$_ChatCompleteRequest value,
          $Res Function(_$_ChatCompleteRequest) then) =
      __$$_ChatCompleteRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ChatModelConverter() ChatModel model,
      List<Message> messages,
      int maxTokens});
}

/// @nodoc
class __$$_ChatCompleteRequestCopyWithImpl<$Res>
    extends _$ChatCompleteRequestCopyWithImpl<$Res, _$_ChatCompleteRequest>
    implements _$$_ChatCompleteRequestCopyWith<$Res> {
  __$$_ChatCompleteRequestCopyWithImpl(_$_ChatCompleteRequest _value,
      $Res Function(_$_ChatCompleteRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? messages = null,
    Object? maxTokens = null,
  }) {
    return _then(_$_ChatCompleteRequest(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChatModel,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      maxTokens: null == maxTokens
          ? _value.maxTokens
          : maxTokens // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChatCompleteRequest implements _ChatCompleteRequest {
  const _$_ChatCompleteRequest(
      {@ChatModelConverter() this.model = ChatModel.gptTurbo,
      required final List<Message> messages,
      this.maxTokens = 100})
      : _messages = messages;

  factory _$_ChatCompleteRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompleteRequestFromJson(json);

  @override
  @JsonKey()
  @ChatModelConverter()
  final ChatModel model;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final int maxTokens;

  @override
  String toString() {
    return 'ChatCompleteRequest(model: $model, messages: $messages, maxTokens: $maxTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompleteRequest &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.maxTokens, maxTokens) ||
                other.maxTokens == maxTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, model,
      const DeepCollectionEquality().hash(_messages), maxTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompleteRequestCopyWith<_$_ChatCompleteRequest> get copyWith =>
      __$$_ChatCompleteRequestCopyWithImpl<_$_ChatCompleteRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompleteRequestToJson(
      this,
    );
  }
}

abstract class _ChatCompleteRequest implements ChatCompleteRequest {
  const factory _ChatCompleteRequest(
      {@ChatModelConverter() final ChatModel model,
      required final List<Message> messages,
      final int maxTokens}) = _$_ChatCompleteRequest;

  factory _ChatCompleteRequest.fromJson(Map<String, dynamic> json) =
      _$_ChatCompleteRequest.fromJson;

  @override
  @ChatModelConverter()
  ChatModel get model;
  @override
  List<Message> get messages;
  @override
  int get maxTokens;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompleteRequestCopyWith<_$_ChatCompleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
