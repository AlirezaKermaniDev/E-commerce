// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddToCartProductEntity _$AddToCartProductEntityFromJson(
    Map<String, dynamic> json) {
  return _AddToCartProductEntity.fromJson(json);
}

/// @nodoc
mixin _$AddToCartProductEntity {
  List<double>? get selectedSizes => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  ProductEntity? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToCartProductEntityCopyWith<AddToCartProductEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartProductEntityCopyWith<$Res> {
  factory $AddToCartProductEntityCopyWith(AddToCartProductEntity value,
          $Res Function(AddToCartProductEntity) then) =
      _$AddToCartProductEntityCopyWithImpl<$Res, AddToCartProductEntity>;
  @useResult
  $Res call({List<double>? selectedSizes, int? count, ProductEntity? product});

  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class _$AddToCartProductEntityCopyWithImpl<$Res,
        $Val extends AddToCartProductEntity>
    implements $AddToCartProductEntityCopyWith<$Res> {
  _$AddToCartProductEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSizes = freezed,
    Object? count = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      selectedSizes: freezed == selectedSizes
          ? _value.selectedSizes
          : selectedSizes // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddToCartProductEntityImplCopyWith<$Res>
    implements $AddToCartProductEntityCopyWith<$Res> {
  factory _$$AddToCartProductEntityImplCopyWith(
          _$AddToCartProductEntityImpl value,
          $Res Function(_$AddToCartProductEntityImpl) then) =
      __$$AddToCartProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double>? selectedSizes, int? count, ProductEntity? product});

  @override
  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class __$$AddToCartProductEntityImplCopyWithImpl<$Res>
    extends _$AddToCartProductEntityCopyWithImpl<$Res,
        _$AddToCartProductEntityImpl>
    implements _$$AddToCartProductEntityImplCopyWith<$Res> {
  __$$AddToCartProductEntityImplCopyWithImpl(
      _$AddToCartProductEntityImpl _value,
      $Res Function(_$AddToCartProductEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSizes = freezed,
    Object? count = freezed,
    Object? product = freezed,
  }) {
    return _then(_$AddToCartProductEntityImpl(
      selectedSizes: freezed == selectedSizes
          ? _value._selectedSizes
          : selectedSizes // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToCartProductEntityImpl implements _AddToCartProductEntity {
  const _$AddToCartProductEntityImpl(
      {final List<double>? selectedSizes, this.count, this.product})
      : _selectedSizes = selectedSizes;

  factory _$AddToCartProductEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToCartProductEntityImplFromJson(json);

  final List<double>? _selectedSizes;
  @override
  List<double>? get selectedSizes {
    final value = _selectedSizes;
    if (value == null) return null;
    if (_selectedSizes is EqualUnmodifiableListView) return _selectedSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? count;
  @override
  final ProductEntity? product;

  @override
  String toString() {
    return 'AddToCartProductEntity(selectedSizes: $selectedSizes, count: $count, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartProductEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedSizes, _selectedSizes) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedSizes), count, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartProductEntityImplCopyWith<_$AddToCartProductEntityImpl>
      get copyWith => __$$AddToCartProductEntityImplCopyWithImpl<
          _$AddToCartProductEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartProductEntityImplToJson(
      this,
    );
  }
}

abstract class _AddToCartProductEntity implements AddToCartProductEntity {
  const factory _AddToCartProductEntity(
      {final List<double>? selectedSizes,
      final int? count,
      final ProductEntity? product}) = _$AddToCartProductEntityImpl;

  factory _AddToCartProductEntity.fromJson(Map<String, dynamic> json) =
      _$AddToCartProductEntityImpl.fromJson;

  @override
  List<double>? get selectedSizes;
  @override
  int? get count;
  @override
  ProductEntity? get product;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartProductEntityImplCopyWith<_$AddToCartProductEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
