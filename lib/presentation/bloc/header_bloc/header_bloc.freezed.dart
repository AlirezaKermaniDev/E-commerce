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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) updateBasketCount,
    required TResult Function() changeThemeMode,
    required TResult Function(Locale locale) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? updateBasketCount,
    TResult? Function()? changeThemeMode,
    TResult? Function(Locale locale)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? updateBasketCount,
    TResult Function()? changeThemeMode,
    TResult Function(Locale locale)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBasketCount value) updateBasketCount,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBasketCount value)? updateBasketCount,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBasketCount value)? updateBasketCount,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderEventCopyWith<$Res> {
  factory $HeaderEventCopyWith(
          HeaderEvent value, $Res Function(HeaderEvent) then) =
      _$HeaderEventCopyWithImpl<$Res, HeaderEvent>;
}

/// @nodoc
class _$HeaderEventCopyWithImpl<$Res, $Val extends HeaderEvent>
    implements $HeaderEventCopyWith<$Res> {
  _$HeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateBasketCountImplCopyWith<$Res> {
  factory _$$UpdateBasketCountImplCopyWith(_$UpdateBasketCountImpl value,
          $Res Function(_$UpdateBasketCountImpl) then) =
      __$$UpdateBasketCountImplCopyWithImpl<$Res>;
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
    required TResult Function() changeThemeMode,
    required TResult Function(Locale locale) changeLanguage,
  }) {
    return updateBasketCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? updateBasketCount,
    TResult? Function()? changeThemeMode,
    TResult? Function(Locale locale)? changeLanguage,
  }) {
    return updateBasketCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? updateBasketCount,
    TResult Function()? changeThemeMode,
    TResult Function(Locale locale)? changeLanguage,
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
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return updateBasketCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBasketCount value)? updateBasketCount,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return updateBasketCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBasketCount value)? updateBasketCount,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ChangeLanguage value)? changeLanguage,
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

  int get count;
  @JsonKey(ignore: true)
  _$$UpdateBasketCountImplCopyWith<_$UpdateBasketCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeThemeModeImplCopyWith<$Res> {
  factory _$$ChangeThemeModeImplCopyWith(_$ChangeThemeModeImpl value,
          $Res Function(_$ChangeThemeModeImpl) then) =
      __$$ChangeThemeModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeThemeModeImplCopyWithImpl<$Res>
    extends _$HeaderEventCopyWithImpl<$Res, _$ChangeThemeModeImpl>
    implements _$$ChangeThemeModeImplCopyWith<$Res> {
  __$$ChangeThemeModeImplCopyWithImpl(
      _$ChangeThemeModeImpl _value, $Res Function(_$ChangeThemeModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeThemeModeImpl implements _ChangeThemeMode {
  const _$ChangeThemeModeImpl();

  @override
  String toString() {
    return 'HeaderEvent.changeThemeMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeThemeModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) updateBasketCount,
    required TResult Function() changeThemeMode,
    required TResult Function(Locale locale) changeLanguage,
  }) {
    return changeThemeMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? updateBasketCount,
    TResult? Function()? changeThemeMode,
    TResult? Function(Locale locale)? changeLanguage,
  }) {
    return changeThemeMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? updateBasketCount,
    TResult Function()? changeThemeMode,
    TResult Function(Locale locale)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBasketCount value) updateBasketCount,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return changeThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBasketCount value)? updateBasketCount,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return changeThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBasketCount value)? updateBasketCount,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeThemeMode implements HeaderEvent {
  const factory _ChangeThemeMode() = _$ChangeThemeModeImpl;
}

/// @nodoc
abstract class _$$ChangeLanguageImplCopyWith<$Res> {
  factory _$$ChangeLanguageImplCopyWith(_$ChangeLanguageImpl value,
          $Res Function(_$ChangeLanguageImpl) then) =
      __$$ChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLanguageImplCopyWithImpl<$Res>
    extends _$HeaderEventCopyWithImpl<$Res, _$ChangeLanguageImpl>
    implements _$$ChangeLanguageImplCopyWith<$Res> {
  __$$ChangeLanguageImplCopyWithImpl(
      _$ChangeLanguageImpl _value, $Res Function(_$ChangeLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLanguageImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageImpl implements _ChangeLanguage {
  const _$ChangeLanguageImpl({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'HeaderEvent.changeLanguage(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      __$$ChangeLanguageImplCopyWithImpl<_$ChangeLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) updateBasketCount,
    required TResult Function() changeThemeMode,
    required TResult Function(Locale locale) changeLanguage,
  }) {
    return changeLanguage(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? updateBasketCount,
    TResult? Function()? changeThemeMode,
    TResult? Function(Locale locale)? changeLanguage,
  }) {
    return changeLanguage?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? updateBasketCount,
    TResult Function()? changeThemeMode,
    TResult Function(Locale locale)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateBasketCount value) updateBasketCount,
    required TResult Function(_ChangeThemeMode value) changeThemeMode,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateBasketCount value)? updateBasketCount,
    TResult? Function(_ChangeThemeMode value)? changeThemeMode,
    TResult? Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateBasketCount value)? updateBasketCount,
    TResult Function(_ChangeThemeMode value)? changeThemeMode,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements HeaderEvent {
  const factory _ChangeLanguage({required final Locale locale}) =
      _$ChangeLanguageImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HeaderState {
  int get addedToCartProductsCount => throw _privateConstructorUsedError;

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
  $Res call({int addedToCartProductsCount});
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
    Object? addedToCartProductsCount = null,
  }) {
    return _then(_value.copyWith(
      addedToCartProductsCount: null == addedToCartProductsCount
          ? _value.addedToCartProductsCount
          : addedToCartProductsCount // ignore: cast_nullable_to_non_nullable
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
  $Res call({int addedToCartProductsCount});
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
    Object? addedToCartProductsCount = null,
  }) {
    return _then(_$HeaderStateImpl(
      addedToCartProductsCount: null == addedToCartProductsCount
          ? _value.addedToCartProductsCount
          : addedToCartProductsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HeaderStateImpl implements _HeaderState {
  const _$HeaderStateImpl({this.addedToCartProductsCount = 0});

  @override
  @JsonKey()
  final int addedToCartProductsCount;

  @override
  String toString() {
    return 'HeaderState(addedToCartProductsCount: $addedToCartProductsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderStateImpl &&
            (identical(
                    other.addedToCartProductsCount, addedToCartProductsCount) ||
                other.addedToCartProductsCount == addedToCartProductsCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addedToCartProductsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderStateImplCopyWith<_$HeaderStateImpl> get copyWith =>
      __$$HeaderStateImplCopyWithImpl<_$HeaderStateImpl>(this, _$identity);
}

abstract class _HeaderState implements HeaderState {
  const factory _HeaderState({final int addedToCartProductsCount}) =
      _$HeaderStateImpl;

  @override
  int get addedToCartProductsCount;
  @override
  @JsonKey(ignore: true)
  _$$HeaderStateImplCopyWith<_$HeaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
