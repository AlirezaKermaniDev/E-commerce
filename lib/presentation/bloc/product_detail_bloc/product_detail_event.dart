part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.getProduct({required String productId}) =
      _GetProduct;
  const factory ProductDetailEvent.increaseCount() = _IncreaseCount;
  const factory ProductDetailEvent.decreaseCount() = _DecreaseCount;
  const factory ProductDetailEvent.changeSelectedSizes({required double size}) =
      _ChangeSelectedSizes;
  const factory ProductDetailEvent.addToCart({required ProductEntity product}) =
      _AddToCart;
}
