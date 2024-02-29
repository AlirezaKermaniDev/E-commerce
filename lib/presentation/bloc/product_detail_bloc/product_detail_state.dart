part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    required List<double> selectedSizes,
    required int addCount,
    String? error,
  }) = _ProductDetailState;

  factory ProductDetailState.initial() => const ProductDetailState(
        selectedSizes: [],
        addCount: 1,
      );
}
