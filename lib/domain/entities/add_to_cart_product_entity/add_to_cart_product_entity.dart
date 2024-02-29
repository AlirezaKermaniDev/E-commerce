import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_product_entity.freezed.dart';
part 'add_to_cart_product_entity.g.dart';

@Freezed(toJson: true)
abstract class AddToCartProductEntity with _$AddToCartProductEntity {
  const factory AddToCartProductEntity({
    List<double>? selectedSizes,
    int? count,
    ProductEntity? product,
  }) = _AddToCartProductEntity;

  factory AddToCartProductEntity.fromJson(Map<String, dynamic> json) =>
      _$AddToCartProductEntityFromJson(json);
}
