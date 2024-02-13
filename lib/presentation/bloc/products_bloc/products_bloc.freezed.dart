// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProduts,
    required TResult Function(ProductSort newSorting) changeSorting,
    required TResult Function(ProductFilterEntity newFilters) changeFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProduts,
    TResult? Function(ProductSort newSorting)? changeSorting,
    TResult? Function(ProductFilterEntity newFilters)? changeFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProduts,
    TResult Function(ProductSort newSorting)? changeSorting,
    TResult Function(ProductFilterEntity newFilters)? changeFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProduts value) getProduts,
    required TResult Function(_ChangeSorting value) changeSorting,
    required TResult Function(_ChangeFilters value) changeFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProduts value)? getProduts,
    TResult? Function(_ChangeSorting value)? changeSorting,
    TResult? Function(_ChangeFilters value)? changeFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProduts value)? getProduts,
    TResult Function(_ChangeSorting value)? changeSorting,
    TResult Function(_ChangeFilters value)? changeFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProdutsImplCopyWith<$Res> {
  factory _$$GetProdutsImplCopyWith(
          _$GetProdutsImpl value, $Res Function(_$GetProdutsImpl) then) =
      __$$GetProdutsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProdutsImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetProdutsImpl>
    implements _$$GetProdutsImplCopyWith<$Res> {
  __$$GetProdutsImplCopyWithImpl(
      _$GetProdutsImpl _value, $Res Function(_$GetProdutsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProdutsImpl implements _GetProduts {
  const _$GetProdutsImpl();

  @override
  String toString() {
    return 'ProductsEvent.getProduts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProdutsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProduts,
    required TResult Function(ProductSort newSorting) changeSorting,
    required TResult Function(ProductFilterEntity newFilters) changeFilters,
  }) {
    return getProduts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProduts,
    TResult? Function(ProductSort newSorting)? changeSorting,
    TResult? Function(ProductFilterEntity newFilters)? changeFilters,
  }) {
    return getProduts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProduts,
    TResult Function(ProductSort newSorting)? changeSorting,
    TResult Function(ProductFilterEntity newFilters)? changeFilters,
    required TResult orElse(),
  }) {
    if (getProduts != null) {
      return getProduts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProduts value) getProduts,
    required TResult Function(_ChangeSorting value) changeSorting,
    required TResult Function(_ChangeFilters value) changeFilters,
  }) {
    return getProduts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProduts value)? getProduts,
    TResult? Function(_ChangeSorting value)? changeSorting,
    TResult? Function(_ChangeFilters value)? changeFilters,
  }) {
    return getProduts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProduts value)? getProduts,
    TResult Function(_ChangeSorting value)? changeSorting,
    TResult Function(_ChangeFilters value)? changeFilters,
    required TResult orElse(),
  }) {
    if (getProduts != null) {
      return getProduts(this);
    }
    return orElse();
  }
}

abstract class _GetProduts implements ProductsEvent {
  const factory _GetProduts() = _$GetProdutsImpl;
}

/// @nodoc
abstract class _$$ChangeSortingImplCopyWith<$Res> {
  factory _$$ChangeSortingImplCopyWith(
          _$ChangeSortingImpl value, $Res Function(_$ChangeSortingImpl) then) =
      __$$ChangeSortingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductSort newSorting});
}

/// @nodoc
class __$$ChangeSortingImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$ChangeSortingImpl>
    implements _$$ChangeSortingImplCopyWith<$Res> {
  __$$ChangeSortingImplCopyWithImpl(
      _$ChangeSortingImpl _value, $Res Function(_$ChangeSortingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newSorting = null,
  }) {
    return _then(_$ChangeSortingImpl(
      newSorting: null == newSorting
          ? _value.newSorting
          : newSorting // ignore: cast_nullable_to_non_nullable
              as ProductSort,
    ));
  }
}

/// @nodoc

class _$ChangeSortingImpl implements _ChangeSorting {
  const _$ChangeSortingImpl({required this.newSorting});

  @override
  final ProductSort newSorting;

  @override
  String toString() {
    return 'ProductsEvent.changeSorting(newSorting: $newSorting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortingImpl &&
            (identical(other.newSorting, newSorting) ||
                other.newSorting == newSorting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newSorting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortingImplCopyWith<_$ChangeSortingImpl> get copyWith =>
      __$$ChangeSortingImplCopyWithImpl<_$ChangeSortingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProduts,
    required TResult Function(ProductSort newSorting) changeSorting,
    required TResult Function(ProductFilterEntity newFilters) changeFilters,
  }) {
    return changeSorting(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProduts,
    TResult? Function(ProductSort newSorting)? changeSorting,
    TResult? Function(ProductFilterEntity newFilters)? changeFilters,
  }) {
    return changeSorting?.call(newSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProduts,
    TResult Function(ProductSort newSorting)? changeSorting,
    TResult Function(ProductFilterEntity newFilters)? changeFilters,
    required TResult orElse(),
  }) {
    if (changeSorting != null) {
      return changeSorting(newSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProduts value) getProduts,
    required TResult Function(_ChangeSorting value) changeSorting,
    required TResult Function(_ChangeFilters value) changeFilters,
  }) {
    return changeSorting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProduts value)? getProduts,
    TResult? Function(_ChangeSorting value)? changeSorting,
    TResult? Function(_ChangeFilters value)? changeFilters,
  }) {
    return changeSorting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProduts value)? getProduts,
    TResult Function(_ChangeSorting value)? changeSorting,
    TResult Function(_ChangeFilters value)? changeFilters,
    required TResult orElse(),
  }) {
    if (changeSorting != null) {
      return changeSorting(this);
    }
    return orElse();
  }
}

abstract class _ChangeSorting implements ProductsEvent {
  const factory _ChangeSorting({required final ProductSort newSorting}) =
      _$ChangeSortingImpl;

  ProductSort get newSorting;
  @JsonKey(ignore: true)
  _$$ChangeSortingImplCopyWith<_$ChangeSortingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFiltersImplCopyWith<$Res> {
  factory _$$ChangeFiltersImplCopyWith(
          _$ChangeFiltersImpl value, $Res Function(_$ChangeFiltersImpl) then) =
      __$$ChangeFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductFilterEntity newFilters});

  $ProductFilterEntityCopyWith<$Res> get newFilters;
}

/// @nodoc
class __$$ChangeFiltersImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$ChangeFiltersImpl>
    implements _$$ChangeFiltersImplCopyWith<$Res> {
  __$$ChangeFiltersImplCopyWithImpl(
      _$ChangeFiltersImpl _value, $Res Function(_$ChangeFiltersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newFilters = null,
  }) {
    return _then(_$ChangeFiltersImpl(
      newFilters: null == newFilters
          ? _value.newFilters
          : newFilters // ignore: cast_nullable_to_non_nullable
              as ProductFilterEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductFilterEntityCopyWith<$Res> get newFilters {
    return $ProductFilterEntityCopyWith<$Res>(_value.newFilters, (value) {
      return _then(_value.copyWith(newFilters: value));
    });
  }
}

/// @nodoc

class _$ChangeFiltersImpl implements _ChangeFilters {
  const _$ChangeFiltersImpl({required this.newFilters});

  @override
  final ProductFilterEntity newFilters;

  @override
  String toString() {
    return 'ProductsEvent.changeFilters(newFilters: $newFilters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFiltersImpl &&
            (identical(other.newFilters, newFilters) ||
                other.newFilters == newFilters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newFilters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFiltersImplCopyWith<_$ChangeFiltersImpl> get copyWith =>
      __$$ChangeFiltersImplCopyWithImpl<_$ChangeFiltersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProduts,
    required TResult Function(ProductSort newSorting) changeSorting,
    required TResult Function(ProductFilterEntity newFilters) changeFilters,
  }) {
    return changeFilters(newFilters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProduts,
    TResult? Function(ProductSort newSorting)? changeSorting,
    TResult? Function(ProductFilterEntity newFilters)? changeFilters,
  }) {
    return changeFilters?.call(newFilters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProduts,
    TResult Function(ProductSort newSorting)? changeSorting,
    TResult Function(ProductFilterEntity newFilters)? changeFilters,
    required TResult orElse(),
  }) {
    if (changeFilters != null) {
      return changeFilters(newFilters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProduts value) getProduts,
    required TResult Function(_ChangeSorting value) changeSorting,
    required TResult Function(_ChangeFilters value) changeFilters,
  }) {
    return changeFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProduts value)? getProduts,
    TResult? Function(_ChangeSorting value)? changeSorting,
    TResult? Function(_ChangeFilters value)? changeFilters,
  }) {
    return changeFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProduts value)? getProduts,
    TResult Function(_ChangeSorting value)? changeSorting,
    TResult Function(_ChangeFilters value)? changeFilters,
    required TResult orElse(),
  }) {
    if (changeFilters != null) {
      return changeFilters(this);
    }
    return orElse();
  }
}

abstract class _ChangeFilters implements ProductsEvent {
  const factory _ChangeFilters(
      {required final ProductFilterEntity newFilters}) = _$ChangeFiltersImpl;

  ProductFilterEntity get newFilters;
  @JsonKey(ignore: true)
  _$$ChangeFiltersImplCopyWith<_$ChangeFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  ProductSort get sorts => throw _privateConstructorUsedError;
  ProductFilterEntity get filters => throw _privateConstructorUsedError;
  List<ProductEntity> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {bool isLoading,
      ProductSort sorts,
      ProductFilterEntity filters,
      List<ProductEntity> products});

  $ProductFilterEntityCopyWith<$Res> get filters;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? sorts = null,
    Object? filters = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sorts: null == sorts
          ? _value.sorts
          : sorts // ignore: cast_nullable_to_non_nullable
              as ProductSort,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ProductFilterEntity,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductFilterEntityCopyWith<$Res> get filters {
    return $ProductFilterEntityCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ProductSort sorts,
      ProductFilterEntity filters,
      List<ProductEntity> products});

  @override
  $ProductFilterEntityCopyWith<$Res> get filters;
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? sorts = null,
    Object? filters = null,
    Object? products = null,
  }) {
    return _then(_$ProductsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sorts: null == sorts
          ? _value.sorts
          : sorts // ignore: cast_nullable_to_non_nullable
              as ProductSort,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as ProductFilterEntity,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  const _$ProductsStateImpl(
      {required this.isLoading,
      required this.sorts,
      required this.filters,
      required final List<ProductEntity> products})
      : _products = products;

  @override
  final bool isLoading;
  @override
  final ProductSort sorts;
  @override
  final ProductFilterEntity filters;
  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState(isLoading: $isLoading, sorts: $sorts, filters: $filters, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.sorts, sorts) || other.sorts == sorts) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, sorts, filters,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState(
      {required final bool isLoading,
      required final ProductSort sorts,
      required final ProductFilterEntity filters,
      required final List<ProductEntity> products}) = _$ProductsStateImpl;

  @override
  bool get isLoading;
  @override
  ProductSort get sorts;
  @override
  ProductFilterEntity get filters;
  @override
  List<ProductEntity> get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
