part of 'about_us_our_products_item_widget.dart';

Widget _animatorWidgetBuilder({
  required Widget child,
  int? millisecondsDelay,
  bool rotateTrasition = false,
}) {
  return AnimatorWidget(
      withFadeTransition: true,
      rotateTrasition:
          rotateTrasition ? Tween<double>(begin: 0, end: -.1) : null,
      slideTransition: rotateTrasition
          ? null
          : Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
      delay:
          millisecondsDelay == null ? null : const Duration(milliseconds: 750),
      child: child);
}
