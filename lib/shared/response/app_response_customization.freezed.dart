// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_response_customization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppResponse _$AppResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'success':
      return _AppResponseSuccess.fromJson(json);
    case 'error':
      return _AppResponseError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppResponse {
  String get message => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)
        success,
    required TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        success,
    TResult? Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        success,
    TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppResponseSuccess value) success,
    required TResult Function(_AppResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppResponseSuccess value)? success,
    TResult? Function(_AppResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppResponseSuccess value)? success,
    TResult Function(_AppResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppResponseCopyWith<AppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseCopyWith<$Res> {
  factory $AppResponseCopyWith(
          AppResponse value, $Res Function(AppResponse) then) =
      _$AppResponseCopyWithImpl<$Res, AppResponse>;
  @useResult
  $Res call({String message, int? statusCode, Map<String, dynamic>? data});
}

/// @nodoc
class _$AppResponseCopyWithImpl<$Res, $Val extends AppResponse>
    implements $AppResponseCopyWith<$Res> {
  _$AppResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppResponseSuccessImplCopyWith<$Res>
    implements $AppResponseCopyWith<$Res> {
  factory _$$AppResponseSuccessImplCopyWith(_$AppResponseSuccessImpl value,
          $Res Function(_$AppResponseSuccessImpl) then) =
      __$$AppResponseSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? statusCode, Map<String, dynamic>? data});
}

/// @nodoc
class __$$AppResponseSuccessImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$AppResponseSuccessImpl>
    implements _$$AppResponseSuccessImplCopyWith<$Res> {
  __$$AppResponseSuccessImplCopyWithImpl(_$AppResponseSuccessImpl _value,
      $Res Function(_$AppResponseSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AppResponseSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppResponseSuccessImpl implements _AppResponseSuccess {
  const _$AppResponseSuccessImpl(
      {this.message = 'Success',
      this.statusCode,
      final Map<String, dynamic>? data,
      final String? $type})
      : _data = data,
        $type = $type ?? 'success';

  factory _$AppResponseSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppResponseSuccessImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  final int? statusCode;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.success(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppResponseSuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppResponseSuccessImplCopyWith<_$AppResponseSuccessImpl> get copyWith =>
      __$$AppResponseSuccessImplCopyWithImpl<_$AppResponseSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)
        success,
    required TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)
        error,
  }) {
    return success(message, statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        success,
    TResult? Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        error,
  }) {
    return success?.call(message, statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        success,
    TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, statusCode, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppResponseSuccess value) success,
    required TResult Function(_AppResponseError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppResponseSuccess value)? success,
    TResult? Function(_AppResponseError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppResponseSuccess value)? success,
    TResult Function(_AppResponseError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppResponseSuccessImplToJson(
      this,
    );
  }
}

abstract class _AppResponseSuccess implements AppResponse {
  const factory _AppResponseSuccess(
      {final String message,
      final int? statusCode,
      final Map<String, dynamic>? data}) = _$AppResponseSuccessImpl;

  factory _AppResponseSuccess.fromJson(Map<String, dynamic> json) =
      _$AppResponseSuccessImpl.fromJson;

  @override
  String get message;
  @override
  int? get statusCode;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AppResponseSuccessImplCopyWith<_$AppResponseSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppResponseErrorImplCopyWith<$Res>
    implements $AppResponseCopyWith<$Res> {
  factory _$$AppResponseErrorImplCopyWith(_$AppResponseErrorImpl value,
          $Res Function(_$AppResponseErrorImpl) then) =
      __$$AppResponseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? statusCode, Map<String, dynamic>? data});
}

/// @nodoc
class __$$AppResponseErrorImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$AppResponseErrorImpl>
    implements _$$AppResponseErrorImplCopyWith<$Res> {
  __$$AppResponseErrorImplCopyWithImpl(_$AppResponseErrorImpl _value,
      $Res Function(_$AppResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AppResponseErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppResponseErrorImpl implements _AppResponseError {
  const _$AppResponseErrorImpl(
      {this.message = 'Error',
      this.statusCode,
      final Map<String, dynamic>? data,
      final String? $type})
      : _data = data,
        $type = $type ?? 'error';

  factory _$AppResponseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppResponseErrorImplFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  final int? statusCode;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppResponse.error(message: $message, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppResponseErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppResponseErrorImplCopyWith<_$AppResponseErrorImpl> get copyWith =>
      __$$AppResponseErrorImplCopyWithImpl<_$AppResponseErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)
        success,
    required TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)
        error,
  }) {
    return error(message, statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        success,
    TResult? Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        error,
  }) {
    return error?.call(message, statusCode, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        success,
    TResult Function(
            String message, int? statusCode, Map<String, dynamic>? data)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, statusCode, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppResponseSuccess value) success,
    required TResult Function(_AppResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppResponseSuccess value)? success,
    TResult? Function(_AppResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppResponseSuccess value)? success,
    TResult Function(_AppResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppResponseErrorImplToJson(
      this,
    );
  }
}

abstract class _AppResponseError implements AppResponse {
  const factory _AppResponseError(
      {final String message,
      final int? statusCode,
      final Map<String, dynamic>? data}) = _$AppResponseErrorImpl;

  factory _AppResponseError.fromJson(Map<String, dynamic> json) =
      _$AppResponseErrorImpl.fromJson;

  @override
  String get message;
  @override
  int? get statusCode;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AppResponseErrorImplCopyWith<_$AppResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
