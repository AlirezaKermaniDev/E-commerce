part of '../about_us_our_products_item_widget.dart';

class _AboutUsOurProductsItemWidgetWeb extends StatelessWidget {
  const _AboutUsOurProductsItemWidgetWeb(
      {super.key,
      required this.title,
      required this.description,
      required this.shapeGradient,
      required this.imagePath});
  final String title;
  final String description;
  final Gradient shapeGradient;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AnimatorWidget(
        withFadeTransition: true,
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  gradient: shapeGradient, shape: BoxShape.circle),
            ),
            AnimatorWidget(
                rotateTrasition: Tween<double>(begin: 0, end: -.1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(imagePath),
                )),
          ],
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      AnimatorWidget(
        withFadeTransition: true,
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
        delay: const Duration(milliseconds: 250),
        child: Text(
          title,
          style: typography.h5Title,
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      AnimatorWidget(
        withFadeTransition: true,
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
        delay: const Duration(milliseconds: 500),
        child: Text(
          description,
          style: typography.bodyText1.copyWith(color: colorPalette.gray2),
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      AnimatorWidget(
        withFadeTransition: true,
        slideTransition:
            Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
        delay: const Duration(milliseconds: 750),
        child: ArrowTitleButtonWidget(
          title: "Shop collection",
          onTap: () {},
          color: colorPalette.accent1,
          icon: Icons.arrow_forward_rounded,
          iconSize: 23,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    ]);
  }
}
