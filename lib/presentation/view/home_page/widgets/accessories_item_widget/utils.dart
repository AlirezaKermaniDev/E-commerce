part of 'accessories_item_widget.dart';

String _shape2(Color color) {
  return color == colorPalette.darkPrimary
      ? AssetHandler.shape1
      : AssetHandler.shape2;
}

String _shape1(Color color) {
  return color == colorPalette.darkPrimary
      ? AssetHandler.shape3
      : AssetHandler.shape4;
}

Widget _shape1Widget(Color color) {
  return Align(
    alignment: Alignment.topLeft,
    child: SvgPicture.asset(_shape1(color)),
  );
}

Widget _shape2Widget(Color color) {
  return Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.only(right: 150, bottom: 50),
      child: SvgPicture.asset(_shape2(color)),
    ),
  );
}

Widget _shape3Widget() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(left: 100, bottom: 30),
      child: SvgPicture.asset(AssetHandler.shape5),
    ),
  );
}

Widget _animatorWidgetBuilder({
  required Widget child,
  required int millisecondDelay,
  bool withScale = false,
}) {
  return AnimatorWidget(
    withFadeTransition: true,
    delay: Duration(milliseconds: millisecondDelay),
    slideTransition: withScale == false
        ? Tween<Offset>(
            begin: const Offset(.2, 0),
            end: Offset.zero,
          )
        : null,
    scaleTransition:
        withScale == true ? Tween<double>(begin: .9, end: 1) : null,
    child: child,
  );
}
