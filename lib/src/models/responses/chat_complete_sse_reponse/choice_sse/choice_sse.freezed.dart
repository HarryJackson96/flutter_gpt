// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_sse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceSSE _$ChoiceSSEFromJson(Map<String, dynamic> json) {
  return _ChoiceSSE.fromJson(json);
}

/// @nodoc
mixin _$ChoiceSSE {
  @JsonKey(name: 'delta')
  Message? get message => throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceSSECopyWith<ChoiceSSE> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceSSECopyWith<$Res> {
  factory $ChoiceSSECopyWith(ChoiceSSE value, $Res Function(ChoiceSSE) then) =
      _$ChoiceSSECopyWithImpl<$Res, ChoiceSSE>;
  @useResult
  $Res call(
      {@JsonKey(name: 'delta') Message? message,
      String? finishReason,
      int index});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ChoiceSSECopyWithImpl<$Res, $Val extends ChoiceSSE>
    implements $ChoiceSSECopyWith<$Res> {
  _$ChoiceSSECopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? finishReason = freezed,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChoiceSSECopyWith<$Res> implements $ChoiceSSECopyWith<$Res> {
  factory _$$_ChoiceSSECopyWith(
          _$_ChoiceSSE value, $Res Function(_$_ChoiceSSE) then) =
      __$$_ChoiceSSECopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'delta') Message? message,
      String? finishReason,
      int index});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_ChoiceSSECopyWithImpl<$Res>
    extends _$ChoiceSSECopyWithImpl<$Res, _$_ChoiceSSE>
    implements _$$_ChoiceSSECopyWith<$Res> {
  __$$_ChoiceSSECopyWithImpl(
      _$_ChoiceSSE _value, $Res Function(_$_ChoiceSSE) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? finishReason = freezed,
    Object? index = null,
  }) {
    return _then(_$_ChoiceSSE(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChoiceSSE implements _ChoiceSSE {
  const _$_ChoiceSSE(
      {@JsonKey(name: 'delta') this.message,
      this.finishReason,
      required this.index});

  factory _$_ChoiceSSE.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceSSEFromJson(json);

  @override
  @JsonKey(name: 'delta')
  final Message? message;
  @override
  final String? finishReason;
  @override
  final int index;

  @override
  String toString() {
    return 'ChoiceSSE(message: $message, finishReason: $finishReason, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceSSE &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, finishReason, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceSSECopyWith<_$_ChoiceSSE> get copyWith =>
      __$$_ChoiceSSECopyWithImpl<_$_ChoiceSSE>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceSSEToJson(
      this,
    );
  }
}

abstract class _ChoiceSSE implements ChoiceSSE {
  const factory _ChoiceSSE(
      {@JsonKey(name: 'delta') final Message? message,
      final String? finishReason,
      required final int index}) = _$_ChoiceSSE;

  factory _ChoiceSSE.fromJson(Map<String, dynamic> json) =
      _$_ChoiceSSE.fromJson;

  @override
  @JsonKey(name: 'delta')
  Message? get message;
  @override
  String? get finishReason;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceSSECopyWith<_$_ChoiceSSE> get copyWith =>
      throw _privateConstructorUsedError;
}
