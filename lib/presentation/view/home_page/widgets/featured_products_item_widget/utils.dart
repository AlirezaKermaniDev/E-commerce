part of 'featured_products_item_widget.dart';

const Color _inkWellhHoverColor = Colors.transparent;

double onHoverHeightAndWidth(BuildContext context) =>
    context.isPhone ? 180 : 150;
double offHoverHeightAndWidth(BuildContext context) =>
    context.isPhone ? 150 : 116;

Widget _animatorWidgetBuilder({
  required Widget child,
  int? index,
  int basemillisecondsDelay = 100,
  bool withScale = false,
}) {
  return AnimatorWidget(
    withFadeTransition: true,
    scaleTransition:
        withScale == true ? Tween<double>(begin: .9, end: 1) : null,
    slideTransition: withScale == false
        ? Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero)
        : null,
    delay: Duration(
      milliseconds: index == null
          ? basemillisecondsDelay
          : ((index % 4) * basemillisecondsDelay),
    ),
    child: child,
  );
}

double _containerSize(bool isHover, BuildContext context) {
  return isHover
      ? onHoverHeightAndWidth(context)
      : offHoverHeightAndWidth(context);
}
