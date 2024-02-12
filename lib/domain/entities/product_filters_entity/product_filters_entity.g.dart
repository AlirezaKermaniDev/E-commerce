// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_filters_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductFilterEntityImpl _$$ProductFilterEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductFilterEntityImpl(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rate: (json['rate'] as num?)?.toDouble(),
      availableSizes: (json['availableSizes'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      colors: (json['colors'] as List<dynamic>?)?.map((e) => e as int).toList(),
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      genders:
          (json['genders'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$ProductFilterEntityImplToJson(
        _$ProductFilterEntityImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'rate': instance.rate,
      'availableSizes': instance.availableSizes,
      'colors': instance.colors,
      'materials': instance.materials,
      'genders': instance.genders,
    };
