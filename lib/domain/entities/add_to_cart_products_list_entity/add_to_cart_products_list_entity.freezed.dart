// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_products_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddToCartProductsListEntity _$AddToCartProductsListEntityFromJson(
    Map<String, dynamic> json) {
  return _AddToCartProductsListEntity.fromJson(json);
}

/// @nodoc
mixin _$AddToCartProductsListEntity {
  List<AddToCartProductEntity>? get addToCartProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToCartProductsListEntityCopyWith<AddToCartProductsListEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartProductsListEntityCopyWith<$Res> {
  factory $AddToCartProductsListEntityCopyWith(
          AddToCartProductsListEntity value,
          $Res Function(AddToCartProductsListEntity) then) =
      _$AddToCartProductsListEntityCopyWithImpl<$Res,
          AddToCartProductsListEntity>;
  @useResult
  $Res call({List<AddToCartProductEntity>? addToCartProducts});
}

/// @nodoc
class _$AddToCartProductsListEntityCopyWithImpl<$Res,
        $Val extends AddToCartProductsListEntity>
    implements $AddToCartProductsListEntityCopyWith<$Res> {
  _$AddToCartProductsListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addToCartProducts = freezed,
  }) {
    return _then(_value.copyWith(
      addToCartProducts: freezed == addToCartProducts
          ? _value.addToCartProducts
          : addToCartProducts // ignore: cast_nullable_to_non_nullable
              as List<AddToCartProductEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddToCartProductsListEntityImplCopyWith<$Res>
    implements $AddToCartProductsListEntityCopyWith<$Res> {
  factory _$$AddToCartProductsListEntityImplCopyWith(
          _$AddToCartProductsListEntityImpl value,
          $Res Function(_$AddToCartProductsListEntityImpl) then) =
      __$$AddToCartProductsListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddToCartProductEntity>? addToCartProducts});
}

/// @nodoc
class __$$AddToCartProductsListEntityImplCopyWithImpl<$Res>
    extends _$AddToCartProductsListEntityCopyWithImpl<$Res,
        _$AddToCartProductsListEntityImpl>
    implements _$$AddToCartProductsListEntityImplCopyWith<$Res> {
  __$$AddToCartProductsListEntityImplCopyWithImpl(
      _$AddToCartProductsListEntityImpl _value,
      $Res Function(_$AddToCartProductsListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addToCartProducts = freezed,
  }) {
    return _then(_$AddToCartProductsListEntityImpl(
      addToCartProducts: freezed == addToCartProducts
          ? _value._addToCartProducts
          : addToCartProducts // ignore: cast_nullable_to_non_nullable
              as List<AddToCartProductEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToCartProductsListEntityImpl
    implements _AddToCartProductsListEntity {
  const _$AddToCartProductsListEntityImpl(
      {final List<AddToCartProductEntity>? addToCartProducts})
      : _addToCartProducts = addToCartProducts;

  factory _$AddToCartProductsListEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddToCartProductsListEntityImplFromJson(json);

  final List<AddToCartProductEntity>? _addToCartProducts;
  @override
  List<AddToCartProductEntity>? get addToCartProducts {
    final value = _addToCartProducts;
    if (value == null) return null;
    if (_addToCartProducts is EqualUnmodifiableListView)
      return _addToCartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddToCartProductsListEntity(addToCartProducts: $addToCartProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartProductsListEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._addToCartProducts, _addToCartProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addToCartProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartProductsListEntityImplCopyWith<_$AddToCartProductsListEntityImpl>
      get copyWith => __$$AddToCartProductsListEntityImplCopyWithImpl<
          _$AddToCartProductsListEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartProductsListEntityImplToJson(
      this,
    );
  }
}

abstract class _AddToCartProductsListEntity
    implements AddToCartProductsListEntity {
  const factory _AddToCartProductsListEntity(
          {final List<AddToCartProductEntity>? addToCartProducts}) =
      _$AddToCartProductsListEntityImpl;

  factory _AddToCartProductsListEntity.fromJson(Map<String, dynamic> json) =
      _$AddToCartProductsListEntityImpl.fromJson;

  @override
  List<AddToCartProductEntity>? get addToCartProducts;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartProductsListEntityImplCopyWith<_$AddToCartProductsListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
