// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String productId) deleteProduct,
    required TResult Function(String productId, int count) changeProductCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String productId)? deleteProduct,
    TResult? Function(String productId, int count)? changeProductCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String productId)? deleteProduct,
    TResult Function(String productId, int count)? changeProductCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_ChangeProductCount value) changeProductCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_ChangeProductCount value)? changeProductCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_ChangeProductCount value)? changeProductCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'CartEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String productId) deleteProduct,
    required TResult Function(String productId, int count) changeProductCount,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String productId)? deleteProduct,
    TResult? Function(String productId, int count)? changeProductCount,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String productId)? deleteProduct,
    TResult Function(String productId, int count)? changeProductCount,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_ChangeProductCount value) changeProductCount,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_ChangeProductCount value)? changeProductCount,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_ChangeProductCount value)? changeProductCount,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements CartEvent {
  const factory _GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
          _$DeleteProductImpl value, $Res Function(_$DeleteProductImpl) then) =
      __$$DeleteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
      _$DeleteProductImpl _value, $Res Function(_$DeleteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$DeleteProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProductImpl implements _DeleteProduct {
  const _$DeleteProductImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.deleteProduct(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String productId) deleteProduct,
    required TResult Function(String productId, int count) changeProductCount,
  }) {
    return deleteProduct(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String productId)? deleteProduct,
    TResult? Function(String productId, int count)? changeProductCount,
  }) {
    return deleteProduct?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String productId)? deleteProduct,
    TResult Function(String productId, int count)? changeProductCount,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_ChangeProductCount value) changeProductCount,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_ChangeProductCount value)? changeProductCount,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_ChangeProductCount value)? changeProductCount,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements CartEvent {
  const factory _DeleteProduct({required final String productId}) =
      _$DeleteProductImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeProductCountImplCopyWith<$Res> {
  factory _$$ChangeProductCountImplCopyWith(_$ChangeProductCountImpl value,
          $Res Function(_$ChangeProductCountImpl) then) =
      __$$ChangeProductCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, int count});
}

/// @nodoc
class __$$ChangeProductCountImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ChangeProductCountImpl>
    implements _$$ChangeProductCountImplCopyWith<$Res> {
  __$$ChangeProductCountImplCopyWithImpl(_$ChangeProductCountImpl _value,
      $Res Function(_$ChangeProductCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_$ChangeProductCountImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeProductCountImpl implements _ChangeProductCount {
  const _$ChangeProductCountImpl(
      {required this.productId, required this.count});

  @override
  final String productId;
  @override
  final int count;

  @override
  String toString() {
    return 'CartEvent.changeProductCount(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProductCountImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProductCountImplCopyWith<_$ChangeProductCountImpl> get copyWith =>
      __$$ChangeProductCountImplCopyWithImpl<_$ChangeProductCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(String productId) deleteProduct,
    required TResult Function(String productId, int count) changeProductCount,
  }) {
    return changeProductCount(productId, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(String productId)? deleteProduct,
    TResult? Function(String productId, int count)? changeProductCount,
  }) {
    return changeProductCount?.call(productId, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(String productId)? deleteProduct,
    TResult Function(String productId, int count)? changeProductCount,
    required TResult orElse(),
  }) {
    if (changeProductCount != null) {
      return changeProductCount(productId, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_ChangeProductCount value) changeProductCount,
  }) {
    return changeProductCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_ChangeProductCount value)? changeProductCount,
  }) {
    return changeProductCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_ChangeProductCount value)? changeProductCount,
    required TResult orElse(),
  }) {
    if (changeProductCount != null) {
      return changeProductCount(this);
    }
    return orElse();
  }
}

abstract class _ChangeProductCount implements CartEvent {
  const factory _ChangeProductCount(
      {required final String productId,
      required final int count}) = _$ChangeProductCountImpl;

  String get productId;
  int get count;
  @JsonKey(ignore: true)
  _$$ChangeProductCountImplCopyWith<_$ChangeProductCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  List<AddToCartProductEntity> get products =>
      throw _privateConstructorUsedError;
  double? get totalProductsPrice => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {List<AddToCartProductEntity> products,
      double? totalProductsPrice,
      String? error});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalProductsPrice = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AddToCartProductEntity>,
      totalProductsPrice: freezed == totalProductsPrice
          ? _value.totalProductsPrice
          : totalProductsPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AddToCartProductEntity> products,
      double? totalProductsPrice,
      String? error});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalProductsPrice = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CartStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AddToCartProductEntity>,
      totalProductsPrice: freezed == totalProductsPrice
          ? _value.totalProductsPrice
          : totalProductsPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required final List<AddToCartProductEntity> products,
      this.totalProductsPrice,
      this.error})
      : _products = products;

  final List<AddToCartProductEntity> _products;
  @override
  List<AddToCartProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final double? totalProductsPrice;
  @override
  final String? error;

  @override
  String toString() {
    return 'CartState(products: $products, totalProductsPrice: $totalProductsPrice, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalProductsPrice, totalProductsPrice) ||
                other.totalProductsPrice == totalProductsPrice) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      totalProductsPrice,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final List<AddToCartProductEntity> products,
      final double? totalProductsPrice,
      final String? error}) = _$CartStateImpl;

  @override
  List<AddToCartProductEntity> get products;
  @override
  double? get totalProductsPrice;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
