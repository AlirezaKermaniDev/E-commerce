part of '../cart_products_item_widget.dart';

class _CartProductsItemWidgetPhone extends StatelessWidget {
  const _CartProductsItemWidgetPhone({
    super.key,
    required this.item,
    required this.index,
  });

  final AddToCartProductEntity item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: _animatorWidgetBuilder(
                    index: index,
                    millisecondsDelay: 300,
                    slideBeginOffset: const Offset(0, .1),
                    child: ProductImageViewerWidget(
                        imageUrl: item.product?.imageUrl ?? ""))),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: _animatorWidgetBuilder(
                              index: index,
                              millisecondsDelay: 400,
                              child: Text(
                                item.product?.title ?? "",
                                style: typography.bodyText1,
                                maxLines: 1,
                              ),
                            ),
                          ),
                          _animatorWidgetBuilder(
                            index: index,
                            millisecondsDelay: 500,
                            child: InkWell(
                              onTap: () {
                                context.read<CartBloc>().add(
                                    CartEvent.deleteProduct(
                                        productId: item.product?.id ?? ""));
                              },
                              child: Icon(
                                Icons.close,
                                color: colorPalette.accent4,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 600,
                        child: Text(item.product?.categories?.last ?? "",
                            style: typography.bodyText4
                                .copyWith(color: colorPalette.gray1)),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 700,
                        child: Row(
                          children: [
                            Text("${context.locale.size}:",
                                style: typography.bodyText4
                                    .copyWith(color: colorPalette.gray1)),
                            const SizedBox(
                              width: 6,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 20,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: item.selectedSizes?.length ?? 0,
                                    itemBuilder: (context, index) {
                                      final size = item.selectedSizes![index];
                                      bool isLast =
                                          item.selectedSizes?.length ==
                                              index + 1;
                                      return Text(isLast ? "$size" : "$size - ",
                                          style: typography.bodyText4);
                                    }),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 900,
                        child: Row(
                          children: [
                            ProductCountButtonWidget(
                                icon: Icons.remove_rounded,
                                isDeactive: false,
                                height: 35,
                                width: 35,
                                iconSize: 22,
                                onTap: () =>
                                    onRemoveProductCountTap(context, item)),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: colorPalette.primary,
                                  border: Border.all(
                                      color: colorPalette.gray6, width: 1.5)),
                              child: Center(
                                child: Text(
                                  item.count?.toString() ?? "1",
                                  style: typography.bodyText2,
                                ),
                              ),
                            ),
                            ProductCountButtonWidget(
                                icon: Icons.add_rounded,
                                height: 35,
                                width: 35,
                                iconSize: 22,
                                onTap: () =>
                                    _onAddProductCountTap(context, item)),
                          ],
                        ),
                      ),
                      _animatorWidgetBuilder(
                          index: index,
                          millisecondsDelay: 1000,
                          child: Text("\$${item.product?.price}",
                              style: typography.bodyText1.copyWith(
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
