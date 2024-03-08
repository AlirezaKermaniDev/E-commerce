part of '../search_product_item_widget.dart';

class _SearchProductItemWidgetWeb extends StatelessWidget {
  const _SearchProductItemWidgetWeb({
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
        child: SizedBox(
          height: 100,
          child: Row(children: [
            Expanded(
                child: ProductImageViewerWidget(imageUrl: item.imageUrl ?? "")),
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
      ),
    );
  }
}
