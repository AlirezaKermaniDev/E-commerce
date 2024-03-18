part of '../product_info_widget.dart';

class _ProductInfoWidgetPhone extends StatelessWidget {
  const _ProductInfoWidgetPhone({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getIt<SizeConfig>().padding, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageWidget(item: item),
            const SizedBox(
              width: 100,
            ),
            ProductDetailWidget(item: item)
          ],
        ),
      ),
    );
  }
}
