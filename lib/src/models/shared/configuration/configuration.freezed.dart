// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenAIConfiguration {
  String get apiKey => throw _privateConstructorUsedError;
  String? get organizationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenAIConfigurationCopyWith<OpenAIConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAIConfigurationCopyWith<$Res> {
  factory $OpenAIConfigurationCopyWith(
          OpenAIConfiguration value, $Res Function(OpenAIConfiguration) then) =
      _$OpenAIConfigurationCopyWithImpl<$Res, OpenAIConfiguration>;
  @useResult
  $Res call({String apiKey, String? organizationId});
}

/// @nodoc
class _$OpenAIConfigurationCopyWithImpl<$Res, $Val extends OpenAIConfiguration>
    implements $OpenAIConfigurationCopyWith<$Res> {
  _$OpenAIConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? organizationId = freezed,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenAIConfigurationCopyWith<$Res>
    implements $OpenAIConfigurationCopyWith<$Res> {
  factory _$$_OpenAIConfigurationCopyWith(_$_OpenAIConfiguration value,
          $Res Function(_$_OpenAIConfiguration) then) =
      __$$_OpenAIConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, String? organizationId});
}

/// @nodoc
class __$$_OpenAIConfigurationCopyWithImpl<$Res>
    extends _$OpenAIConfigurationCopyWithImpl<$Res, _$_OpenAIConfiguration>
    implements _$$_OpenAIConfigurationCopyWith<$Res> {
  __$$_OpenAIConfigurationCopyWithImpl(_$_OpenAIConfiguration _value,
      $Res Function(_$_OpenAIConfiguration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? organizationId = freezed,
  }) {
    return _then(_$_OpenAIConfiguration(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: freezed == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OpenAIConfiguration implements _OpenAIConfiguration {
  const _$_OpenAIConfiguration({required this.apiKey, this.organizationId});

  @override
  final String apiKey;
  @override
  final String? organizationId;

  @override
  String toString() {
    return 'OpenAIConfiguration(apiKey: $apiKey, organizationId: $organizationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAIConfiguration &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiKey, organizationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAIConfigurationCopyWith<_$_OpenAIConfiguration> get copyWith =>
      __$$_OpenAIConfigurationCopyWithImpl<_$_OpenAIConfiguration>(
          this, _$identity);
}

abstract class _OpenAIConfiguration implements OpenAIConfiguration {
  const factory _OpenAIConfiguration(
      {required final String apiKey,
      final String? organizationId}) = _$_OpenAIConfiguration;

  @override
  String get apiKey;
  @override
  String? get organizationId;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAIConfigurationCopyWith<_$_OpenAIConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}
