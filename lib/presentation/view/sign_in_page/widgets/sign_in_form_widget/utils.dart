part of 'sign_in_form_widget.dart';

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

void _onTapJoinUs(BuildContext context) {
  context.go(SignUpPage.path);
}

bool _isDarkMode() {
  return getIt<LocalStorage>().getTheme().themeMode == ThemeMode.dark;
}
