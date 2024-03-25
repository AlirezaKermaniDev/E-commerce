part of 'alternative_product_item_widget.dart';

Widget _animatorWidgetBuilder({
  required Widget child,
  int? millisecondsDelay,
  int? index,
  double? slideOffsetDy,
}) {
  return AnimatorWidget(
    withFadeTransition: true,
    delay: Duration(milliseconds: millisecondsDelay ?? 0 + (index ?? 0 * 100)),
    slideTransition:
        Tween<Offset>(begin: Offset(0, slideOffsetDy ?? .3), end: Offset.zero),
    child: child,
  );
}

void onTap(BuildContext context, String itemId) {
  context.go("${ProductDetailPage.path}/$itemId");
}
