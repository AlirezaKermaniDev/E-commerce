import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_products_list_entity/add_to_cart_products_list_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<_GetProducts>(_onGetProducts);
    on<_DeleteProduct>(_onDeleteProduct);
    on<_ChangeProductCount>(_onChangeProductCount);
  }

  FutureOr<void> _onGetProducts(_GetProducts event, Emitter<CartState> emit) {
    final result = getIt<LocalStorage>().getAddedProductsList();
    double? totalPrice = _calculatePrice(result);

    emit(state.copyWith(
        products: result?.addToCartProducts ?? [],
        totalProductsPrice: totalPrice));
  }

  double? _calculatePrice(AddToCartProductsListEntity? result) {
    double? totalPrice;
    if (result?.addToCartProducts != null &&
        result!.addToCartProducts!.isNotEmpty) {
      final prodcutsPriceList = result.addToCartProducts!
          .map((e) => e.product!.price! * e.count!)
          .toList();
      totalPrice =
          prodcutsPriceList.reduce((value, element) => value + element);
    }
    return totalPrice;
  }

  FutureOr<void> _onDeleteProduct(
      _DeleteProduct event, Emitter<CartState> emit) async {
    final result =
        await getIt<LocalStorage>().removeProductFromCart(event.productId);
    if (result == true) {
      add(const CartEvent.getProducts());
    }
  }

  FutureOr<void> _onChangeProductCount(
      _ChangeProductCount event, Emitter<CartState> emit) async {
    final result = await getIt<LocalStorage>()
        .changeAddedProductCount(event.count, event.productId);
    if (result == true) {
      add(const CartEvent.getProducts());
    }
  }
}
