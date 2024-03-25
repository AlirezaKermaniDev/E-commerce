part of 'best_seller_widget.dart';

const String _title = "Adidas Falcon Shoes for women - 2021 Edition";
const String _price = "\$120.50";

double _rotationRadius(bool isLtrLocale) => isLtrLocale ? math.pi : 0;

Alignment _bestSellerDetailAlignment(bool isLtrLocale) {
  return isLtrLocale ? Alignment.centerLeft : Alignment.centerRight;
}

Offset _sliderBeginOffset(bool isLtrLocale) =>
    Offset(isLtrLocale ? -.9 : .9, 0);

BoxDecoration _backgroundShapeBoxDecoration(BuildContext context) {
  return BoxDecoration(
    gradient: colorPalette.gradient4,
    borderRadius: 1.w(context) == 2000
        ? BorderRadius.circular(30)
        : BorderRadius.only(
            topRight:
                context.isLtrLocale ? const Radius.circular(30) : Radius.zero,
            bottomRight:
                context.isLtrLocale ? const Radius.circular(30) : Radius.zero,
            topLeft:
                context.isLtrLocale ? Radius.zero : const Radius.circular(30),
            bottomLeft:
                context.isLtrLocale ? Radius.zero : const Radius.circular(30),
          ),
  );
}

SizedBox spacerWidget(bool isPhone) {
  return SizedBox(
    height: isPhone ? 60 : 100,
  );
}

Widget _animatorWidgetBuilder(
    {required Widget child,
    int? millisecondDelay,
    Offset? slideBeginOffset,
    bool withVisibilityDetector = true}) {
  return AnimatorWidget(
    withFadeTransition: true,
    withVisibilityDetector: withVisibilityDetector,
    delay: millisecondDelay == null
        ? null
        : Duration(milliseconds: millisecondDelay),
    slideTransition: Tween<Offset>(
      begin: slideBeginOffset ?? const Offset(0, .1),
      end: Offset.zero,
    ),
    child: child,
  );
}
