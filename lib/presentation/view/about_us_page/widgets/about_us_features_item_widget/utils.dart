part of 'about_us_features_item_widget.dart';

Widget _animatorWidgetBuilder({
  required Widget child,
  required bool isLtR,
  bool reverseDelayDuration = false,
}) {
  return AnimatorWidget(
    withFadeTransition: true,
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
    delay: reverseDelayDuration
        ? Duration(milliseconds: isLtR ? 250 : 500)
        : Duration(milliseconds: isLtR ? 500 : 250),
    child: child,
  );
}

EdgeInsets _detailPadding(bool isLtR) => EdgeInsets.only(
    right: getIt<SizeConfig>().padding + (isLtR ? 80 : 0),
    left: getIt<SizeConfig>().padding + (!isLtR ? 80 : 0),
    bottom: 75);

EdgeInsets _imagePadding(bool isLtR) => EdgeInsets.only(
      left: isLtR ? getIt<SizeConfig>().padding : 32.0,
      right: !isLtR ? getIt<SizeConfig>().padding : 32.0,
      bottom: 75,
    );
