part of 'cart_products_item_widget.dart';

const String _deliveryTime = "12-16 April";

void _onAddProductCountTap(BuildContext context, AddToCartProductEntity item) {
  context.read<CartBloc>().add(
        CartEvent.changeProductCount(
          productId: item.product!.id!,
          count: item.count! + 1,
        ),
      );
}

void onRemoveProductCountTap(
    BuildContext context, AddToCartProductEntity item) {
  context.read<CartBloc>().add(
        CartEvent.changeProductCount(
          productId: item.product!.id!,
          count: item.count! - 1,
        ),
      );
}

Widget _animatorWidgetBuilder({
  required Widget child,
  required int millisecondsDelay,
  int? index,
  Offset? slideBeginOffset,
}) {
  return AnimatorWidget(
    withFadeTransition: true,
    delay: index == null
        ? Duration(milliseconds: millisecondsDelay)
        : Duration(milliseconds: millisecondsDelay + (index * 200)),
    slideTransition: Tween<Offset>(
        begin: slideBeginOffset ?? const Offset(.05, 0), end: Offset.zero),
    child: child,
  );
}
