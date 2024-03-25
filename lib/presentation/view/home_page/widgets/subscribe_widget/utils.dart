part of 'subscribe_widget.dart';

const SizedBox _socialMediaSpacer = SizedBox(
  width: 10,
);

double _imageScale(BuildContext context, bool? fullWidth) {
  return fullWidth == true
      ? .9
      : context.isOnMaxWidth
          ? 1
          : 1.2;
}

BorderRadius _boxBorderRadius(BuildContext context, bool? fullWidth) {
  return fullWidth == true || context.isOnMaxWidth
      ? BorderRadius.zero
      : const BorderRadius.only(
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
        );
}

double _boxWidth(BuildContext context, bool? fullWidth) {
  return context.isOnMaxWidth
      ? double.infinity
      : fullWidth == true
          ? 1.w(context)
          : .8.w(context);
}

Widget _socialMediaIconBuilder(String iconPath) {
  return AnimatorWidget(
    withFadeTransition: true,
    slideTransition:
        Tween<Offset>(begin: const Offset(.3, 0), end: Offset.zero),
    child: Container(
        height: 40,
        width: 40,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: colorPalette.primary),
        child: Center(
            child: SizedBox(
          height: 20,
          width: 20,
          child: SvgPicture.asset(
            iconPath,
            color: colorPalette.accent1,
          ),
        ))),
  );
}

Widget _animatorWidgetBuilder({
  required Widget child,
  Offset? slideBeginOffset,
  bool slideTransition = true,
  bool rotateTransition = false,
  bool withVisibilityDetector = true,
}) {
  return AnimatorWidget(
    withFadeTransition: true,
    withVisibilityDetector: withVisibilityDetector,
    rotateTrasition: rotateTransition
        ? Tween<double>(
            begin: -.08,
            end: 0,
          )
        : null,
    slideTransition: slideTransition && !rotateTransition
        ? Tween<Offset>(
            begin: slideBeginOffset ?? const Offset(0, .1),
            end: Offset.zero,
          )
        : null,
    child: child,
  );
}
