part of '../cart_products_item_widget.dart';

class _CartProductsItemWidgetWeb extends StatelessWidget {
  const _CartProductsItemWidgetWeb({
    super.key,
    required this.item,
    required this.index,
  });

  final ProductEntity item;
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
                child: SizedBox(
              height: double.infinity,
              child: AnimatorWidget(
                  withFadeTransition: true,
                  delay: Duration(milliseconds: 900 + (index * 200)),
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1), end: Offset.zero),
                  child:
                      ProductImageViewerWidget(imageUrl: item.imageUrl ?? "")),
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
                                  Duration(milliseconds: 950 + (index * 200)),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.05, 0),
                                  end: Offset.zero),
                              child: Text(item.title ?? "",
                                  style: typography.bodyText5)),
                          AnimatorWidget(
                              withFadeTransition: true,
                              delay:
                                  Duration(milliseconds: 1000 + (index * 200)),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.05, 0),
                                  end: Offset.zero),
                              child: Text("\$${item.price}",
                                  style: typography.bodyText5)),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 1050 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
                        child: Text(item.categories?.last ?? "",
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray2)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 1100 + (index * 200)),
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
                            Text("9", style: typography.bodyText2),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 1150 + (index * 200)),
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
                        delay: Duration(milliseconds: 1200 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
                        child: Row(
                          children: [
                            ProductCountButtonWidget(
                              icon: Icons.remove_rounded,
                              isDeactive: false,
                              onTap: () {},
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: colorPalette.gray6, width: 1.5)),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: typography.bodyText1,
                                ),
                              ),
                            ),
                            ProductCountButtonWidget(
                              icon: Icons.add_rounded,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        delay: Duration(milliseconds: 1250 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
                        child: const CartProductsItemDeleteButtonWidget(),
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
