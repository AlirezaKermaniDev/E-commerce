// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToCartProductEntityImpl _$$AddToCartProductEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToCartProductEntityImpl(
      selectedSizes: (json['selectedSizes'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      count: json['count'] as int?,
      product: json['product'] == null
          ? null
          : ProductEntity.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddToCartProductEntityImplToJson(
        _$AddToCartProductEntityImpl instance) =>
    <String, dynamic>{
      'selectedSizes': instance.selectedSizes,
      'count': instance.count,
      'product': instance.product,
    };
