part of '../product_item_widget.dart';

class _ProductItemWidgetWeb extends StatelessWidget {
  const _ProductItemWidgetWeb({
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
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child:
                        ProductImageViewrWidget(imageUrl: item.imageUrl ?? ""),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.title ?? "",
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: typography.h5Title.copyWith(fontSize: 18),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: colorPalette.accent4,
                  )
                ],
              ),
              Text(
                item.categories?.last ?? "",
                style: typography.bodyText2.copyWith(color: colorPalette.gray2),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "\$${item.price}",
                style: typography.bodyText1.copyWith(),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductImageViewrWidget extends StatelessWidget {
  const ProductImageViewrWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Icon(
          Icons.warning_rounded,
          color: colorPalette.gray3,
        );
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress?.cumulativeBytesLoaded ==
            loadingProgress?.expectedTotalBytes) {
          return child;
        } else {
          return Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: colorPalette.accent4,
            ),
          );
        }
      },
    );
  }
}
