part of '../cart_products_item_widget.dart';

class _CartProductsItemWidgetWeb extends StatelessWidget {
  const _CartProductsItemWidgetWeb({
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
        height: 300,
        child: Row(
          children: [
            Expanded(
              flex: 2,
                child: SizedBox(
              height: double.infinity,
              child: AnimatorWidget(
                  withFadeTransition: true,
                  delay: Duration(milliseconds: 300 + (index * 200)),
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1), end: Offset.zero),
                  child: ProductImageViewerWidget(
                      imageUrl: item.product?.imageUrl ?? "")),
            )),
            const SizedBox(
              width: 40,
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
                          AnimatorWidget(
                              withFadeTransition: true,
                              delay:
                                  Duration(milliseconds: 400 + (index * 200)),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.05, 0),
                                  end: Offset.zero),
                              child: Text(item.product?.title ?? "",
                                  style: typography.bodyText5)),
                          AnimatorWidget(
                              withFadeTransition: true,
                              delay:
                                  Duration(milliseconds: 500 + (index * 200)),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.05, 0),
                                  end: Offset.zero),
                              child: Text("\$${item.product?.price}",
                                  style: typography.bodyText5)),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 600 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
                        child: Text(item.product?.categories?.last ?? "",
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray2)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 700 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
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
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 800 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
                        child: Row(
                          children: [
                            Text(context.locale.estimatedDeliveryDate,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.gray2)),
                            const SizedBox(
                              width: 6,
                            ),
                            Text("12-16 April", style: typography.bodyText2),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 900 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
                        child: Row(
                          children: [
                            ProductCountButtonWidget(
                              icon: Icons.remove_rounded,
                              isDeactive: false,
                              onTap: () {
                                context.read<CartBloc>().add(
                                      CartEvent.changeProductCount(
                                        productId: item.product!.id!,
                                        count: item.count! - 1,
                                      ),
                                    );
                              },
                            ),
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
                              onTap: () {
                                context.read<CartBloc>().add(
                                      CartEvent.changeProductCount(
                                        productId: item.product!.id!,
                                        count: item.count! + 1,
                                      ),
                                    );
                              },
                            ),
                          ],
                        ),
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 1000 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
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
