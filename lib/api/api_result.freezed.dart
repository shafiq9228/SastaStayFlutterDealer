// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(String id, bool status) loadingCondition,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(String id, bool status)? loadingCondition,
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(String id, bool status)? loadingCondition,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LoadingCondition<T> value) loadingCondition,
    required TResult Function(Init<T> value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LoadingCondition<T> value)? loadingCondition,
    TResult? Function(Init<T> value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LoadingCondition<T> value)? loadingCondition,
    TResult Function(Init<T> value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements _Success<T> {
  const _$SuccessImpl(this.data);

  @override
  final T? data;

  @override
  String toString() {
    return 'ApiResult<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(String id, bool status) loadingCondition,
    required TResult Function() init,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(String id, bool status)? loadingCondition,
    TResult? Function()? init,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(String id, bool status)? loadingCondition,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LoadingCondition<T> value) loadingCondition,
    required TResult Function(Init<T> value) init,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LoadingCondition<T> value)? loadingCondition,
    TResult? Function(Init<T> value)? init,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LoadingCondition<T> value)? loadingCondition,
    TResult Function(Init<T> value)? init,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements ApiResult<T> {
  const factory _Success(final T? data) = _$SuccessImpl<T>;

  T? get data;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ApiResult<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(String id, bool status) loadingCondition,
    required TResult Function() init,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(String id, bool status)? loadingCondition,
    TResult? Function()? init,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(String id, bool status)? loadingCondition,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LoadingCondition<T> value) loadingCondition,
    required TResult Function(Init<T> value) init,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LoadingCondition<T> value)? loadingCondition,
    TResult? Function(Init<T> value)? init,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LoadingCondition<T> value)? loadingCondition,
    TResult Function(Init<T> value)? init,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements ApiResult<T> {
  const factory Error(final String error) = _$ErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ApiResult<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(String id, bool status) loadingCondition,
    required TResult Function() init,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(String id, bool status)? loadingCondition,
    TResult? Function()? init,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(String id, bool status)? loadingCondition,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LoadingCondition<T> value) loadingCondition,
    required TResult Function(Init<T> value) init,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LoadingCondition<T> value)? loadingCondition,
    TResult? Function(Init<T> value)? init,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LoadingCondition<T> value)? loadingCondition,
    TResult Function(Init<T> value)? init,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ApiResult<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoadingConditionImplCopyWith<T, $Res> {
  factory _$$LoadingConditionImplCopyWith(_$LoadingConditionImpl<T> value,
          $Res Function(_$LoadingConditionImpl<T>) then) =
      __$$LoadingConditionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String id, bool status});
}

/// @nodoc
class __$$LoadingConditionImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$LoadingConditionImpl<T>>
    implements _$$LoadingConditionImplCopyWith<T, $Res> {
  __$$LoadingConditionImplCopyWithImpl(_$LoadingConditionImpl<T> _value,
      $Res Function(_$LoadingConditionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$LoadingConditionImpl<T>(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingConditionImpl<T> implements LoadingCondition<T> {
  const _$LoadingConditionImpl(this.id, this.status);

  @override
  final String id;
  @override
  final bool status;

  @override
  String toString() {
    return 'ApiResult<$T>.loadingCondition(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingConditionImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingConditionImplCopyWith<T, _$LoadingConditionImpl<T>> get copyWith =>
      __$$LoadingConditionImplCopyWithImpl<T, _$LoadingConditionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(String id, bool status) loadingCondition,
    required TResult Function() init,
  }) {
    return loadingCondition(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(String id, bool status)? loadingCondition,
    TResult? Function()? init,
  }) {
    return loadingCondition?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(String id, bool status)? loadingCondition,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (loadingCondition != null) {
      return loadingCondition(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LoadingCondition<T> value) loadingCondition,
    required TResult Function(Init<T> value) init,
  }) {
    return loadingCondition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LoadingCondition<T> value)? loadingCondition,
    TResult? Function(Init<T> value)? init,
  }) {
    return loadingCondition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LoadingCondition<T> value)? loadingCondition,
    TResult Function(Init<T> value)? init,
    required TResult orElse(),
  }) {
    if (loadingCondition != null) {
      return loadingCondition(this);
    }
    return orElse();
  }
}

abstract class LoadingCondition<T> implements ApiResult<T> {
  const factory LoadingCondition(final String id, final bool status) =
      _$LoadingConditionImpl<T>;

  String get id;
  bool get status;
  @JsonKey(ignore: true)
  _$$LoadingConditionImplCopyWith<T, _$LoadingConditionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<T, $Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl<T> value, $Res Function(_$InitImpl<T>) then) =
      __$$InitImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$InitImpl<T>>
    implements _$$InitImplCopyWith<T, $Res> {
  __$$InitImplCopyWithImpl(
      _$InitImpl<T> _value, $Res Function(_$InitImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl<T> implements Init<T> {
  const _$InitImpl();

  @override
  String toString() {
    return 'ApiResult<$T>.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) success,
    required TResult Function(String error) error,
    required TResult Function() loading,
    required TResult Function(String id, bool status) loadingCondition,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loading,
    TResult? Function(String id, bool status)? loadingCondition,
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? success,
    TResult Function(String error)? error,
    TResult Function()? loading,
    TResult Function(String id, bool status)? loadingCondition,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(LoadingCondition<T> value) loadingCondition,
    required TResult Function(Init<T> value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(LoadingCondition<T> value)? loadingCondition,
    TResult? Function(Init<T> value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(Loading<T> value)? loading,
    TResult Function(LoadingCondition<T> value)? loadingCondition,
    TResult Function(Init<T> value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init<T> implements ApiResult<T> {
  const factory Init() = _$InitImpl<T>;
}
