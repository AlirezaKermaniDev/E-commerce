import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_products_list_entity.freezed.dart';
part 'add_to_cart_products_list_entity.g.dart';

@Freezed(toJson: true)
abstract class AddToCartProductsListEntity with _$AddToCartProductsListEntity {
  const factory AddToCartProductsListEntity({
    List<AddToCartProductEntity>? addToCartProducts,
  }) = _AddToCartProductsListEntity;

  factory AddToCartProductsListEntity.fromJson(Map<String, dynamic> json) =>
      _$AddToCartProductsListEntityFromJson(json);
}
