part of '../cart_products_list_widget.dart';

class _CartProductsListWidgetWeb extends StatelessWidget {
  const _CartProductsListWidgetWeb({
    super.key,
    required this.listViewKey,
  });
  final GlobalKey<State<StatefulWidget>>? listViewKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextAnimator(
          context.locale.shoppingCart,
          style: typography.h4Title,
          initialDelay: const Duration(milliseconds: 200),
          spaceDelay: Duration.zero,
          incomingEffect: WidgetTransitionEffects.incomingScaleDown(
              blur: const Offset(0, 20),
              duration: const Duration(milliseconds: 170)),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 10,
        ),
        TextAnimator(
          "${context.locale.total}: 5 ${context.locale.items}",
          style: typography.bodyText2.copyWith(color: colorPalette.gray2),
          initialDelay: const Duration(milliseconds: 700),
        ),
        const SizedBox(
          height: 60,
        ),
        ListView.builder(
            key: listViewKey,
            itemCount: productListData.getRange(0, 5).length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = productListData.getRange(0, 5).toList()[index];
              return CartProductsItemWidget(
                item: item,
                index: index,
              );
            })
      ],
    );
  }
}
