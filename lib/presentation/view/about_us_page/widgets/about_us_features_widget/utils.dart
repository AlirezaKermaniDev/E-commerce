part of 'about_us_features_widget.dart';

Widget _animatorWidgetBuilder({required Widget child, int? millisecondsDelay}) {
  return AnimatorWidget(
    withFadeTransition: true,
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
    delay: millisecondsDelay == null
        ? null
        : Duration(milliseconds: millisecondsDelay),
    child: child,
  );
}
