// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeResponse _$CodeResponseFromJson(Map<String, dynamic> json) {
  return _CodeResponse.fromJson(json);
}

/// @nodoc
mixin _$CodeResponse {
  String? get output => throw _privateConstructorUsedError;
  String? get executionTime => throw _privateConstructorUsedError;
  String? get memoryUsed => throw _privateConstructorUsedError;

  /// Serializes this CodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeResponseCopyWith<CodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeResponseCopyWith<$Res> {
  factory $CodeResponseCopyWith(
          CodeResponse value, $Res Function(CodeResponse) then) =
      _$CodeResponseCopyWithImpl<$Res, CodeResponse>;
  @useResult
  $Res call({String? output, String? executionTime, String? memoryUsed});
}

/// @nodoc
class _$CodeResponseCopyWithImpl<$Res, $Val extends CodeResponse>
    implements $CodeResponseCopyWith<$Res> {
  _$CodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = freezed,
    Object? executionTime = freezed,
    Object? memoryUsed = freezed,
  }) {
    return _then(_value.copyWith(
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String?,
      executionTime: freezed == executionTime
          ? _value.executionTime
          : executionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      memoryUsed: freezed == memoryUsed
          ? _value.memoryUsed
          : memoryUsed // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeResponseImplCopyWith<$Res>
    implements $CodeResponseCopyWith<$Res> {
  factory _$$CodeResponseImplCopyWith(
          _$CodeResponseImpl value, $Res Function(_$CodeResponseImpl) then) =
      __$$CodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? output, String? executionTime, String? memoryUsed});
}

/// @nodoc
class __$$CodeResponseImplCopyWithImpl<$Res>
    extends _$CodeResponseCopyWithImpl<$Res, _$CodeResponseImpl>
    implements _$$CodeResponseImplCopyWith<$Res> {
  __$$CodeResponseImplCopyWithImpl(
      _$CodeResponseImpl _value, $Res Function(_$CodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = freezed,
    Object? executionTime = freezed,
    Object? memoryUsed = freezed,
  }) {
    return _then(_$CodeResponseImpl(
      output: freezed == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String?,
      executionTime: freezed == executionTime
          ? _value.executionTime
          : executionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      memoryUsed: freezed == memoryUsed
          ? _value.memoryUsed
          : memoryUsed // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeResponseImpl implements _CodeResponse {
  const _$CodeResponseImpl(
      {required this.output,
      required this.executionTime,
      required this.memoryUsed});

  factory _$CodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeResponseImplFromJson(json);

  @override
  final String? output;
  @override
  final String? executionTime;
  @override
  final String? memoryUsed;

  @override
  String toString() {
    return 'CodeResponse(output: $output, executionTime: $executionTime, memoryUsed: $memoryUsed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeResponseImpl &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.executionTime, executionTime) ||
                other.executionTime == executionTime) &&
            (identical(other.memoryUsed, memoryUsed) ||
                other.memoryUsed == memoryUsed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, output, executionTime, memoryUsed);

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeResponseImplCopyWith<_$CodeResponseImpl> get copyWith =>
      __$$CodeResponseImplCopyWithImpl<_$CodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeResponseImplToJson(
      this,
    );
  }
}

abstract class _CodeResponse implements CodeResponse {
  const factory _CodeResponse(
      {required final String? output,
      required final String? executionTime,
      required final String? memoryUsed}) = _$CodeResponseImpl;

  factory _CodeResponse.fromJson(Map<String, dynamic> json) =
      _$CodeResponseImpl.fromJson;

  @override
  String? get output;
  @override
  String? get executionTime;
  @override
  String? get memoryUsed;

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeResponseImplCopyWith<_$CodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
