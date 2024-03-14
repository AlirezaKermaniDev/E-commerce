part of '../product_info_widget.dart';

class _ProductInfoWidgetTablet extends StatelessWidget {
  const _ProductInfoWidgetTablet({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageWidget(item: item),
            const SizedBox(
              width: 50,
            ),
            ProductDetailWidget(item: item)
          ],
        ),
      ),
    );
  }
}
