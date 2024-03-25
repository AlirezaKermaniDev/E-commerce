part of '../alternative_products_widget.dart';

class _AlternativeProductsWidgetPhone extends StatelessWidget {
  _AlternativeProductsWidgetPhone({super.key, required this.item});

  final ProductEntity item;
  final PageController scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    final List<ProductEntity> products = _getAlternatives(item);
    return ConstraintsWidget(
      child: Column(
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
                    style: typography.h5Title,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 500,
            width: 1.w(context),
            child: ScrollbarWidget(
              scrollController: scrollController,
              child: PageView.builder(
                  itemCount: products.length,
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
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
      ),
    );
  }
}
