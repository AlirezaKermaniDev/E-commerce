part of '../product_item_widget.dart';

class _ProductItemWidgetWeb extends StatefulWidget {
  const _ProductItemWidgetWeb({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  State<_ProductItemWidgetWeb> createState() => _ProductItemWidgetWebState();
}

class _ProductItemWidgetWebState extends State<_ProductItemWidgetWeb> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go("${ProductDetailPage.path}/${widget.item.id}");
      },
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorPalette.gray6,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AnimatedPadding(
                duration: const Duration(milliseconds: 100),
                padding:
                    _isHover ? EdgeInsets.zero : const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: ProductImageViewerWidget(
                        imageUrl: widget.item.imageUrl ?? ""),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.item.title ?? "",
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
                    widget.item.categories?.last ?? "",
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray2),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "\$${widget.item.price}",
                    style: typography.bodyText1.copyWith(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
