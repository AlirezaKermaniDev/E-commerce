part of 'alternative_products_widget.dart';

List<ProductEntity> _getAlternatives(ProductEntity item) {
  return productListData
      .where(
          (e) => e.id != item.id && e.categories?.last == item.categories?.last)
      .toList();
}

EdgeInsets _listPadding(BuildContext context) {
  return EdgeInsets.only(
    left: context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
    right: !context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
    bottom: 80,
  );
}
