part of '../cart_products_item_widget.dart';

class _CartProductsItemWidgetTablet extends StatelessWidget {
  const _CartProductsItemWidgetTablet({
    super.key,
    required this.item,
    required this.index,
  });

  final AddToCartProductEntity item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45),
      child: Ink(
        height: 500,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: _animatorWidgetBuilder(
                      index: index,
                      millisecondsDelay: 300,
                      slideBeginOffset: const Offset(0, .1),
                      child: ProductImageViewerWidget(
                          imageUrl: item.product?.imageUrl ?? "")),
                )),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              flex: 3,
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
                                  style: typography.bodyText5,
                                  maxLines: 1,
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ),
                          _animatorWidgetBuilder(
                              index: index,
                              millisecondsDelay: 500,
                              child: Text("\$${item.product?.price}",
                                  style: typography.bodyText5)),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 600,
                        child: Text(item.product?.categories?.last ?? "",
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray2)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 700,
                        child: Row(
                          children: [
                            Text("${context.locale.size}:",
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.gray2)),
                            const SizedBox(
                              width: 6,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 25,
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
                                          style: typography.bodyText2);
                                    }),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 800,
                        child: Row(
                          children: [
                            Text(context.locale.estimatedDeliveryDate,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.gray2)),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(_deliveryTime, style: typography.bodyText2),
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
                                onTap: () =>
                                    onRemoveProductCountTap(context, item)),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: colorPalette.gray6, width: 1.5)),
                              child: Center(
                                child: Text(
                                  item.count?.toString() ?? "1",
                                  style: typography.bodyText1,
                                ),
                              ),
                            ),
                            ProductCountButtonWidget(
                                icon: Icons.add_rounded,
                                onTap: () =>
                                    _onAddProductCountTap(context, item)),
                          ],
                        ),
                      ),
                      _animatorWidgetBuilder(
                        index: index,
                        millisecondsDelay: 1000,
                        child: CartProductsItemDeleteButtonWidget(
                          productId: item.product!.id!,
                        ),
                      )
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
