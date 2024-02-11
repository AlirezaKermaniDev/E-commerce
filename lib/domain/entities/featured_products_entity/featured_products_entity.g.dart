// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_products_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedProductsEntityImpl _$$FeaturedProductsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedProductsEntityImpl(
      gradientType: json['gradientType'] as int?,
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String?,
      rate: json['rate'] as int?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FeaturedProductsEntityImplToJson(
        _$FeaturedProductsEntityImpl instance) =>
    <String, dynamic>{
      'gradientType': instance.gradientType,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'rate': instance.rate,
      'price': instance.price,
    };
