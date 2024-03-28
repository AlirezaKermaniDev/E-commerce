part of '../product_image_widget.dart';

class _ProductImageWidgetPhone extends StatelessWidget {
  const _ProductImageWidgetPhone({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
        withFadeTransition: true,
        delay: const Duration(milliseconds: 200),
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .05), end: Offset.zero),
        child: SizedBox(
          height: 400,
          width: 1.w(context),
          child: Image.network(
            item.imageUrl ?? "",
            fit: BoxFit.cover,
          ),
        ));
  }
}
