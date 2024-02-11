import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_products_entity.freezed.dart';
part 'featured_products_entity.g.dart';

@Freezed(toJson: true)
abstract class FeaturedProductsEntity with _$FeaturedProductsEntity {
  const factory FeaturedProductsEntity(
      {int? gradientType,
      String? imageUrl,
      String? title,
      int? rate,
      double? price}) = _FeaturedProductsEntity;

  factory FeaturedProductsEntity.fromJson(Map<String, dynamic> json) =>
      _$FeaturedProductsEntityFromJson(json);
}
