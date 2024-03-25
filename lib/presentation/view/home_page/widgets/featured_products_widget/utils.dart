part of 'featured_products_widget.dart';

bool _isGrabingMouse = false;

double _pageViewHeight = 450;

List<LinearGradient> _gradients = [
  colorPalette.gradient4,
  colorPalette.gradient2,
  colorPalette.gradient3,
  colorPalette.gradient1,
];

SystemMouseCursor _mouseCursor(bool isGrabingMouse) {
  return isGrabingMouse ? SystemMouseCursors.grabbing : SystemMouseCursors.grab;
}

void _onTapDown(
  void Function(void Function() fn) setState,
) {
  setState(() {
    _isGrabingMouse = true;
  });
}

void _onTapUp(
  void Function(void Function() fn) setState,
) {
  setState(() {
    _isGrabingMouse = false;
  });
}

void _onTapCancel(
  void Function(void Function() fn) setState,
) {
  setState(() {
    _isGrabingMouse = false;
  });
}

Widget _animatorWidgetBuilder(
    {required Widget child, required double offsetDx}) {
  return AnimatorWidget(
    slideTransition: Tween<Offset>(
      begin: Offset(offsetDx, 0),
      end: Offset.zero,
    ),
    withFadeTransition: true,
    child: child,
  );
}
