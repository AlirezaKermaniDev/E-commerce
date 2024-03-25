part of 'drawer_widget.dart';

bool _darkModeValue() {
  return getIt<LocalStorage>().getTheme().themeMode == ThemeMode.dark;
}

Widget _animatorWidgetBuilder({required Widget child, int? millisecondsDelay}) {
  return AnimatorWidget(
    withFadeTransition: true,
    slideTransition:
        Tween<Offset>(begin: const Offset(-.05, 0), end: Offset.zero),
    delay: millisecondsDelay == null
        ? null
        : Duration(milliseconds: millisecondsDelay),
    child: child,
  );
}
