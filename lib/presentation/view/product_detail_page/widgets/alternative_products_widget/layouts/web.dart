part of '../alternative_products_widget.dart';

class _AlternativeProductsWidgetWeb extends StatelessWidget {
  _AlternativeProductsWidgetWeb({super.key, required this.item});

  final ProductEntity item;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final List<ProductEntity> products = _getAlternatives();
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: AnimatorWidget(
            withFadeTransition: true,
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Row(
              children: [
                Text(
                 context.locale.youMayAlsoLike,
                  style: typography.h4Title,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 72,
        ),
        SizedBox(
          height: 580,
          width: 1.w(context),
          child: ScrollBarWidget(
            scrollController: scrollController,
            child: ListView.builder(
                itemCount: products.length,
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
                  right: !context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
                  bottom: 80,
                ),
                itemBuilder: (context, index) {
                  final item = products[index];
                  return AlternativeProductItemWidget(
                    item: item,
                    index: index,
                  );
                }),
          ),
        )
      ],
    );
  }

  List<ProductEntity> _getAlternatives() {
    return productListData
        .where((e) =>
            e.id != item.id && e.categories?.last == item.categories?.last)
        .toList();
  }
}
