// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_complete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatCompleteResponse _$ChatCompleteResponseFromJson(Map<String, dynamic> json) {
  return _ChatCompleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatCompleteResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  List<Choice> get choices => throw _privateConstructorUsedError;
  Usage get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompleteResponseCopyWith<ChatCompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompleteResponseCopyWith<$Res> {
  factory $ChatCompleteResponseCopyWith(ChatCompleteResponse value,
          $Res Function(ChatCompleteResponse) then) =
      _$ChatCompleteResponseCopyWithImpl<$Res, ChatCompleteResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      List<Choice> choices,
      Usage usage});

  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class _$ChatCompleteResponseCopyWithImpl<$Res,
        $Val extends ChatCompleteResponse>
    implements $ChatCompleteResponseCopyWith<$Res> {
  _$ChatCompleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res> get usage {
    return $UsageCopyWith<$Res>(_value.usage, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCompleteResponseCopyWith<$Res>
    implements $ChatCompleteResponseCopyWith<$Res> {
  factory _$$_ChatCompleteResponseCopyWith(_$_ChatCompleteResponse value,
          $Res Function(_$_ChatCompleteResponse) then) =
      __$$_ChatCompleteResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      List<Choice> choices,
      Usage usage});

  @override
  $UsageCopyWith<$Res> get usage;
}

/// @nodoc
class __$$_ChatCompleteResponseCopyWithImpl<$Res>
    extends _$ChatCompleteResponseCopyWithImpl<$Res, _$_ChatCompleteResponse>
    implements _$$_ChatCompleteResponseCopyWith<$Res> {
  __$$_ChatCompleteResponseCopyWithImpl(_$_ChatCompleteResponse _value,
      $Res Function(_$_ChatCompleteResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = null,
    Object? usage = null,
  }) {
    return _then(_$_ChatCompleteResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      usage: null == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatCompleteResponse implements _ChatCompleteResponse {
  const _$_ChatCompleteResponse(
      {required this.id,
      required this.object,
      required this.created,
      required this.model,
      required final List<Choice> choices,
      required this.usage})
      : _choices = choices;

  factory _$_ChatCompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatCompleteResponseFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  @override
  final String model;
  final List<Choice> _choices;
  @override
  List<Choice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final Usage usage;

  @override
  String toString() {
    return 'ChatCompleteResponse(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatCompleteResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      const DeepCollectionEquality().hash(_choices), usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCompleteResponseCopyWith<_$_ChatCompleteResponse> get copyWith =>
      __$$_ChatCompleteResponseCopyWithImpl<_$_ChatCompleteResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatCompleteResponseToJson(
      this,
    );
  }
}

abstract class _ChatCompleteResponse implements ChatCompleteResponse {
  const factory _ChatCompleteResponse(
      {required final String id,
      required final String object,
      required final int created,
      required final String model,
      required final List<Choice> choices,
      required final Usage usage}) = _$_ChatCompleteResponse;

  factory _ChatCompleteResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatCompleteResponse.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  String get model;
  @override
  List<Choice> get choices;
  @override
  Usage get usage;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCompleteResponseCopyWith<_$_ChatCompleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
