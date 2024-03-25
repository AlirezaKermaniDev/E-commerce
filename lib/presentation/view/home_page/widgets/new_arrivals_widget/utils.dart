part of 'new_arrivals_widget.dart';

List<LinearGradient> _gradients = [
  colorPalette.gradient4,
  colorPalette.gradient3,
  colorPalette.gradient1,
  colorPalette.gradient2,
];

final ScrollController scrollController = ScrollController();

Widget _animatorWidgetBuilder(
    {required Widget child, double slideOffsetDx = .1}) {
  return AnimatorWidget(
      slideTransition:
          Tween<Offset>(begin: Offset(slideOffsetDx, 0), end: Offset.zero),
      withFadeTransition: true,
      child: child);
}
