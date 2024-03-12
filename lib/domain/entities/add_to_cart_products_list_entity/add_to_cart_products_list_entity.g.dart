// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_products_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToCartProductsListEntityImpl _$$AddToCartProductsListEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToCartProductsListEntityImpl(
      addToCartProducts: (json['addToCartProducts'] as List<dynamic>?)
          ?.map(
              (e) => AddToCartProductEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddToCartProductsListEntityImplToJson(
        _$AddToCartProductsListEntityImpl instance) =>
    <String, dynamic>{
      'addToCartProducts': instance.addToCartProducts,
    };
