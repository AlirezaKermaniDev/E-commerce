part of 'home_page_title_widget.dart';

const Duration _animatorTextInitialDelay = Duration(milliseconds: 1500);
const Duration _animatorTextSpaceDelay = Duration.zero;
const double _phonePageSpacerValue = 30.0;

Widget _widgetAnimatorBuilder({
  required int millisecondDelay,
  required Widget child,
}) {
  return WidgetAnimator(
    incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
      delay: Duration(milliseconds: millisecondDelay),
      blur: const Offset(20, 0),
    ),
    child: child,
  );
}

Widget _phonePageSpacer() {
  return const SizedBox(
    height: _phonePageSpacerValue,
  );
}
