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
      child: Row(
        children: [
          Expanded(
              flex: 3,
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
            width: 12,
          ),
          Expanded(
            flex: 6,
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
                          child: AnimatorWidget(
                            withFadeTransition: true,
                            delay: Duration(milliseconds: 400 + (index * 200)),
                            slideTransition: Tween<Offset>(
                                begin: const Offset(.05, 0), end: Offset.zero),
                            child: Text(
                              item.product?.title ?? "",
                              style: typography.bodyText1,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            context.read<CartBloc>().add(
                                CartEvent.deleteProduct(
                                    productId: item.product?.id ?? ""));
                          },
                          child: Icon(
                            Icons.close,
                            color: colorPalette.accent4,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      delay: Duration(milliseconds: 600 + (index * 200)),
                      slideTransition: Tween<Offset>(
                          begin: const Offset(.05, 0), end: Offset.zero),
                      child: Text(item.product?.categories?.last ?? "",
                          style: typography.bodyText4
                              .copyWith(color: colorPalette.gray1)),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      delay: Duration(milliseconds: 700 + (index * 200)),
                      slideTransition: Tween<Offset>(
                          begin: const Offset(.05, 0), end: Offset.zero),
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: item.selectedSizes?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    final size = item.selectedSizes![index];
                                    bool isLast =
                                        item.selectedSizes?.length == index + 1;
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
                            height: 35,
                            width: 35,
                            iconSize: 22,
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
                        delay: Duration(milliseconds: 500 + (index * 200)),
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.05, 0), end: Offset.zero),
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
    );
  }
}
