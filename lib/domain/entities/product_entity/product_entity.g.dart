// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      id: json['id'] as String?,
      title: json['title'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      availableSizes: (json['availableSizes'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      colors: (json['colors'] as List<dynamic>?)?.map((e) => e as int).toList(),
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      genders:
          (json['genders'] as List<dynamic>?)?.map((e) => e as int).toList(),
      deliveryAndReturns: json['deliveryAndReturns'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'imageUrl': instance.imageUrl,
      'id': instance.id,
      'title': instance.title,
      'rate': instance.rate,
      'price': instance.price,
      'availableSizes': instance.availableSizes,
      'colors': instance.colors,
      'materials': instance.materials,
      'genders': instance.genders,
      'deliveryAndReturns': instance.deliveryAndReturns,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
