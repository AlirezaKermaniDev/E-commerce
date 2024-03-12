import 'dart:convert';

import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_products_list_entity/add_to_cart_products_list_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:event_bus/event_bus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageImpl implements LocalStorage {
  final SharedPreferences preferences;

  LocalStorageImpl({required this.preferences});
  @override
  Future<bool> addProductToCart(
      AddToCartProductEntity addToCartProductEntity) async {
    final currentProducts = getAddedProductsList();
    final newProductsList = <AddToCartProductEntity>[];
    if (currentProducts?.addToCartProducts != null) {
      newProductsList.addAll(currentProducts!.addToCartProducts!);
      final filterdList = currentProducts.addToCartProducts!
          .where((e) => e.product!.id == addToCartProductEntity.product!.id)
          .toList();
      if (filterdList.isNotEmpty) {
        final count = filterdList.first.count! + addToCartProductEntity.count!;
        return changeAddedProductCount(
            count, addToCartProductEntity.product!.id!);
      }
    }
    newProductsList.add(addToCartProductEntity);
    final encodedProductsList = json.encode(
        AddToCartProductsListEntity(addToCartProducts: newProductsList)
            .toJson());
    getIt<EventBus>().fire(addToCartProductEntity);

    return await preferences.setString("AddToCart", encodedProductsList);
  }

  @override
  AddToCartProductsListEntity? getAddedProductsList() {
    final result = preferences.getString("AddToCart");
    if (result != null) {
      final newProductsList = <AddToCartProductEntity>[];

      final productsList =
          AddToCartProductsListEntity.fromJson(json.decode(result));
      newProductsList.addAll(productsList.addToCartProducts!);
      newProductsList
          .sort((a, b) => a.product!.title!.compareTo(b.product!.title!));

      return AddToCartProductsListEntity(addToCartProducts: newProductsList);
    } else {
      return null;
    }
  }

  @override
  Future<bool> changeAddedProductCount(int count, String productId) async {
    if (count == 0) {
      return removeProductFromCart(productId);
    }
    final currentProducts = getAddedProductsList();
    if (currentProducts?.addToCartProducts != null) {
      final filterdList = currentProducts!.addToCartProducts!
          .where((e) => e.product!.id == productId)
          .toList();
      if (filterdList.isNotEmpty) {
        final newProduct = AddToCartProductEntity(
            count: count,
            product: filterdList.first.product,
            selectedSizes: filterdList.first.selectedSizes);
        final newProductsList = <AddToCartProductEntity>[];
        newProductsList.addAll(currentProducts.addToCartProducts!);
        newProductsList.removeWhere((e) => e.product!.id == productId);
        newProductsList.add(newProduct);
        final encodedProductsList = json.encode(
            AddToCartProductsListEntity(addToCartProducts: newProductsList)
                .toJson());

        return await preferences.setString("AddToCart", encodedProductsList);
      }
    }
    return false;
  }

  @override
  Future<bool> clearAddedProducts() async {
    return await preferences.remove("AddToCart");
  }

  @override
  Future<bool> removeProductFromCart(String productId) async {
    final currentProducts = getAddedProductsList();
    if (currentProducts?.addToCartProducts != null) {
      final newProductsList = <AddToCartProductEntity>[];
      newProductsList.addAll(currentProducts!.addToCartProducts!);
      newProductsList.removeWhere((e) => e.product!.id == productId);
      final encodedProductsList = json.encode(
          AddToCartProductsListEntity(addToCartProducts: newProductsList)
              .toJson());
      getIt<EventBus>().fire(const AddToCartProductEntity());

      return await preferences.setString("AddToCart", encodedProductsList);
    }
    return false;
  }
}
