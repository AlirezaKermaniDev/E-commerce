part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required List<AddToCartProductEntity> products,
    double? totalProductsPrice,
    String? error,
  }) = _CartState;

  factory CartState.initial() => const CartState(
        products: [],
      );
}
