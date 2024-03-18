part of '../product_item_widget.dart';

class _ProductItemWidgetPhone extends StatelessWidget {
  const _ProductItemWidgetPhone({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go("${ProductDetailPage.path}/${item.id}");
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorPalette.gray6,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child:
                        ProductImageViewerWidget(imageUrl: item.imageUrl ?? ""),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    item.title ?? "",
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: typography.bodyText2,
                  ),
                  Text(
                    item.categories?.last ?? "",
                    style: typography.bodyText4
                        .copyWith(color: colorPalette.gray2),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "\$${item.price}",
                    style: typography.bodyText2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
