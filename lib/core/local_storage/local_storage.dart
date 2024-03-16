import 'package:ecommerce_app/core/app_theme/app_theme.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_products_list_entity/add_to_cart_products_list_entity.dart';
import 'package:flutter/material.dart';

abstract class LocalStorage {
  Future<bool> addProductToCart(AddToCartProductEntity addToCartProductEntity);
  AddToCartProductsListEntity? getAddedProductsList();
  Future<bool> clearAddedProducts();
  Future<bool> removeProductFromCart(String productId);
  Future<bool> changeAddedProductCount(int count, String productId);
  Future<bool> setThemeMode(ThemeMode themeMode);
  AppTheme getTheme();
  Future<bool> setLocale(Locale locale);
  Locale getLocale();
}
