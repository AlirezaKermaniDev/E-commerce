part of 'select_delivery_method_widget.dart';

Widget _animatorWidgetBuilder({required Widget child, int? millisecondsDelay}) {
  return AnimatorWidget(
    withFadeTransition: true,
    delay: millisecondsDelay == null
        ? null
        : Duration(milliseconds: millisecondsDelay),
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
    child: child,
  );
}
