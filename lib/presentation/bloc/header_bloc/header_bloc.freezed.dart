// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HeaderEvent {
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) updateBasketCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? updateBasketCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? updateBasketCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBasketCount value) updateBasketCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBasketCount value)? updateBasketCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBasketCount value)? updateBasketCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeaderEventCopyWith<HeaderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderEventCopyWith<$Res> {
  factory $HeaderEventCopyWith(
          HeaderEvent value, $Res Function(HeaderEvent) then) =
      _$HeaderEventCopyWithImpl<$Res, HeaderEvent>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$HeaderEventCopyWithImpl<$Res, $Val extends HeaderEvent>
    implements $HeaderEventCopyWith<$Res> {
  _$HeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateBasketCountImplCopyWith<$Res>
    implements $HeaderEventCopyWith<$Res> {
  factory _$$UpdateBasketCountImplCopyWith(_$UpdateBasketCountImpl value,
          $Res Function(_$UpdateBasketCountImpl) then) =
      __$$UpdateBasketCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$UpdateBasketCountImplCopyWithImpl<$Res>
    extends _$HeaderEventCopyWithImpl<$Res, _$UpdateBasketCountImpl>
    implements _$$UpdateBasketCountImplCopyWith<$Res> {
  __$$UpdateBasketCountImplCopyWithImpl(_$UpdateBasketCountImpl _value,
      $Res Function(_$UpdateBasketCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$UpdateBasketCountImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateBasketCountImpl implements _UpdateBasketCount {
  const _$UpdateBasketCountImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'HeaderEvent.updateBasketCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBasketCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBasketCountImplCopyWith<_$UpdateBasketCountImpl> get copyWith =>
      __$$UpdateBasketCountImplCopyWithImpl<_$UpdateBasketCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) updateBasketCount,
  }) {
    return updateBasketCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? updateBasketCount,
  }) {
    return updateBasketCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? updateBasketCount,
    required TResult orElse(),
  }) {
    if (updateBasketCount != null) {
      return updateBasketCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBasketCount value) updateBasketCount,
  }) {
    return updateBasketCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBasketCount value)? updateBasketCount,
  }) {
    return updateBasketCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBasketCount value)? updateBasketCount,
    required TResult orElse(),
  }) {
    if (updateBasketCount != null) {
      return updateBasketCount(this);
    }
    return orElse();
  }
}

abstract class _UpdateBasketCount implements HeaderEvent {
  const factory _UpdateBasketCount({required final int count}) =
      _$UpdateBasketCountImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBasketCountImplCopyWith<_$UpdateBasketCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeaderState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeaderStateCopyWith<HeaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderStateCopyWith<$Res> {
  factory $HeaderStateCopyWith(
          HeaderState value, $Res Function(HeaderState) then) =
      _$HeaderStateCopyWithImpl<$Res, HeaderState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$HeaderStateCopyWithImpl<$Res, $Val extends HeaderState>
    implements $HeaderStateCopyWith<$Res> {
  _$HeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeaderStateImplCopyWith<$Res>
    implements $HeaderStateCopyWith<$Res> {
  factory _$$HeaderStateImplCopyWith(
          _$HeaderStateImpl value, $Res Function(_$HeaderStateImpl) then) =
      __$$HeaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$HeaderStateImplCopyWithImpl<$Res>
    extends _$HeaderStateCopyWithImpl<$Res, _$HeaderStateImpl>
    implements _$$HeaderStateImplCopyWith<$Res> {
  __$$HeaderStateImplCopyWithImpl(
      _$HeaderStateImpl _value, $Res Function(_$HeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$HeaderStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HeaderStateImpl implements _HeaderState {
  const _$HeaderStateImpl({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'HeaderState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderStateImplCopyWith<_$HeaderStateImpl> get copyWith =>
      __$$HeaderStateImplCopyWithImpl<_$HeaderStateImpl>(this, _$identity);
}

abstract class _HeaderState implements HeaderState {
  const factory _HeaderState({final int count}) = _$HeaderStateImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$HeaderStateImplCopyWith<_$HeaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
