part of '../search_product_item_widget.dart';

class _SearchProductItemWidgetTablet extends StatelessWidget {
  const _SearchProductItemWidgetTablet({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {
          context.go("${ProductDetailPage.path}/${item.id}");
        },
        child: Row(children: [
          Expanded(
              child: SizedBox(
            height: double.infinity,
            child: ProductImageViewerWidget(
              imageUrl: item.imageUrl ?? "",
              boxFit: BoxFit.fitHeight,
            ),
          )),
          const SizedBox(
            width: 16,
          ),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    item.categories?.last ?? "",
                    style: typography.bodyText4
                        .copyWith(color: colorPalette.gray2),
                  ),
                  Text(item.title ?? "", style: typography.bodyText1),
                  Text("\$${item.price}",
                      style: typography.bodyText1
                          .copyWith(color: colorPalette.accent4)),
                ],
              ))
        ]),
      ),
    );
  }
}
