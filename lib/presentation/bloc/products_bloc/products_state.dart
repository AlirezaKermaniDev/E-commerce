part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required bool isLoading,
    ProductSort? sorts,
    ProductFilterEntity? filters,
    required List<ProductEntity> products,
  }) = _ProductsState;

  factory ProductsState.initial() => const ProductsState(
        products: [],
        isLoading: false,
      );
}
