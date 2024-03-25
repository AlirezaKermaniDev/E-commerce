part of 'why_choose_our_shop_widget.dart';

Widget _shoupBenefitsItemBuilder(IconData icon, String title) {
  return AnimatorWidget(
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
    withFadeTransition: true,
    child: Row(
      children: [
        Icon(
          icon,
          color: colorPalette.accent1,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          title,
          style: typography.bodyText1.copyWith(
            color: colorPalette.darkPrimary,
          ),
        ),
      ],
    ),
  );
}

Widget _animatorWidgetBuilder(
    {required Widget child, Offset? slideBeginOffset}) {
  return AnimatorWidget(
      slideTransition: Tween<Offset>(
        begin: slideBeginOffset ?? const Offset(0, .2),
        end: Offset.zero,
      ),
      withFadeTransition: true,
      child: child);
}
