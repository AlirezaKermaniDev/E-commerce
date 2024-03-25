part of 'about_us_founder_message_widget.dart';

Alignment _founderImageAlignment(BuildContext context) {
  return context.isLtrLocale ? Alignment.centerRight : Alignment.centerLeft;
}

var _founderImagePadding = EdgeInsets.only(
  bottom: 100,
  left: getIt<SizeConfig>().padding,
  right: getIt<SizeConfig>().padding,
);
Alignment _shapeAlignment(BuildContext context) {
  return context.isLtrLocale ? Alignment.bottomRight : Alignment.bottomLeft;
}

Widget _animatorWidgetBuilder({
  required Widget child,
  int? millisecondsDelay,
  double? slideOffsetDy,
}) {
  return AnimatorWidget(
      withFadeTransition: true,
      delay: millisecondsDelay == null
          ? null
          : Duration(milliseconds: millisecondsDelay),
      slideTransition: Tween<Offset>(
        begin: Offset(0, slideOffsetDy ?? .2),
        end: Offset.zero,
      ),
      child: child);
}

EdgeInsets _padding(BuildContext context) {
  return EdgeInsets.only(
    left: context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
    right: context.isLtrLocale ? 0 : getIt<SizeConfig>().padding,
    top: 130,
    bottom: 100,
  );
}
