part of 'about_us_landing_widget.dart';

Widget _animatorWidgetBuilder(
    {required Widget child, required int millisecondsDelay}) {
  return AnimatorWidget(
    scaleTransition: Tween<double>(begin: .9, end: 1),
    withFadeTransition: true,
    delay: Duration(milliseconds: millisecondsDelay),
    child: child,
  );
}

const SizedBox _spacer = SizedBox(
  width: 30,
);

const SizedBox _phoneSpacer = SizedBox(
  height: 30,
);
