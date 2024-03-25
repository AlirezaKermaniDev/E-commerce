part of 'available_sizes_widget.dart';

List<Widget> _sizeItemsList(ProductDetailState state, ProductEntity item) {
  return [
    SizesItemWidget(
      value: "6",
      index: 0,
      isAvailable: item.availableSizes!.contains(6),
      isActive: state.selectedSizes.contains(6),
    ),
    SizesItemWidget(
      value: "7",
      index: 1,
      isAvailable: item.availableSizes!.contains(7),
      isActive: state.selectedSizes.contains(7),
    ),
    SizesItemWidget(
      value: "7.5",
      index: 2,
      isAvailable: item.availableSizes!.contains(7.5),
      isActive: state.selectedSizes.contains(7.5),
    ),
    SizesItemWidget(
      value: "8",
      index: 3,
      isAvailable: item.availableSizes!.contains(8),
      isActive: state.selectedSizes.contains(8),
    ),
    SizesItemWidget(
      value: "9",
      index: 4,
      isAvailable: item.availableSizes!.contains(9),
      isActive: state.selectedSizes.contains(9),
    ),
    SizesItemWidget(
      value: "9.5",
      index: 5,
      isAvailable: item.availableSizes!.contains(9.5),
      isActive: state.selectedSizes.contains(9.5),
    ),
    SizesItemWidget(
      value: "10",
      index: 6,
      isAvailable: item.availableSizes!.contains(10),
      isActive: state.selectedSizes.contains(10),
    ),
    SizesItemWidget(
      value: "10.5",
      index: 7,
      isAvailable: item.availableSizes!.contains(10.5),
      isActive: state.selectedSizes.contains(10.5),
    ),
  ];
}
