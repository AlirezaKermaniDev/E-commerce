part of 'new_arrials_item_widget.dart';

const Color _inkWellHoverColor = Colors.transparent;
const Duration _animationPaddingDuration = Duration(milliseconds: 100);

double _imageHorizontalPadding(BuildContext context) =>
    (.17.w(context) <= 110 ? 0 : .17.w(context));

double _boxWidth(BuildContext context) =>
    .6.w(context) >= 339 ? 330 : .6.w(context);

double _boxHeight(BuildContext context) =>
    .8.w(context) >= 400 ? 400 : .8.w(context);

Widget _animatorWidgetBuilder({
  required Widget child,
  required int millisecondsDelay,
  int? index,
  bool rotateTrasition = false,
  bool scaleTrasition = false,
}) {
  return AnimatorWidget(
      withFadeTransition: true,
      delay: Duration(milliseconds: millisecondsDelay + (index ?? 0 * 100)),
      slideTransition: _animationSlideTween(rotateTrasition, scaleTrasition),
      rotateTrasition: _animationRotateTween(rotateTrasition),
      scaleTransition: _animationScaleTween(scaleTrasition),
      child: child);
}

Tween<double>? _animationScaleTween(bool scaleTrasition) {
  return scaleTrasition
      ? Tween<double>(
          begin: .8,
          end: 1,
        )
      : null;
}

Tween<double>? _animationRotateTween(bool rotateTrasition) =>
    rotateTrasition ? Tween<double>(begin: .06, end: 0) : null;

Tween<Offset>? _animationSlideTween(bool rotateTrasition, bool scaleTrasition) {
  if (rotateTrasition || scaleTrasition) {
    return null;
  } else {
    return Tween<Offset>(begin: const Offset(0, -.1), end: Offset.zero);
  }
}
