part of '../product_image_widget.dart';

class _ProductImageWidgetPhone extends StatelessWidget {
  const _ProductImageWidgetPhone({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 200),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .05), end: Offset.zero),
            child: Image.network(item.imageUrl ?? "")),
      ],
    );
  }
}
