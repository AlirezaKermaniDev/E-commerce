part of '../product_image_widget.dart';

class _ProductImageWidgetWeb extends StatelessWidget {
  const _ProductImageWidgetWeb({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 200),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .05), end: Offset.zero),
              child: Image.network(item.imageUrl ?? "")),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 32,
                  crossAxisSpacing: 32,
                  childAspectRatio: .8),
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 32),
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return AnimatorWidget(
                  withFadeTransition: true,
                  withVisibilityDetector: false,
                  delay: Duration(milliseconds: 1200 + (index * 300)),
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .05), end: Offset.zero),
                  child: Image.network(
                    item.imageUrl ?? "",
                    fit: BoxFit.cover,
                  ),
                );
              })
        ],
      ),
    );
  }
}
