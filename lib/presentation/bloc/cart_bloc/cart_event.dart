part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getProducts() = _GetProducts;
  const factory CartEvent.deleteProduct({required String productId}) =
      _DeleteProduct;
  const factory CartEvent.changeProductCount(
      {required String productId, required int count}) = _ChangeProductCount;
}
