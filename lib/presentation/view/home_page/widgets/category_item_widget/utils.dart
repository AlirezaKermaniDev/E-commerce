part of 'category_item_widget.dart';


const Color _inkWellHoverColor = Colors.transparent;



Widget _animatorWidgetBuilder(
    {required Widget child,
    int? millisecondsDelay,
    bool withScaleTransition = false}) {
  return AnimatorWidget(
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
    scaleTransition:
        withScaleTransition ? Tween<double>(begin: .9, end: 1) : null,
    delay: millisecondsDelay == null
        ? null
        : Duration(milliseconds: millisecondsDelay),
    withFadeTransition: true,
    child: child,
  );
}

Widget _spacer() {
  return const SizedBox(
    height: 16,
  );
}

BoxDecoration _backgroundDecoration = BoxDecoration(
  color: colorPalette.gray6,
  borderRadius: BorderRadius.circular(20),
);
