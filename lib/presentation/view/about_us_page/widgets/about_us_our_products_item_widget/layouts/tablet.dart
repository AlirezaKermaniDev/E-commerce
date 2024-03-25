part of '../about_us_our_products_item_widget.dart';

class _AboutUsOurProductsItemWidgetTablet extends StatelessWidget {
  const _AboutUsOurProductsItemWidgetTablet(
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _animatorWidgetBuilder(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  gradient: shapeGradient, shape: BoxShape.circle),
            ),
            _animatorWidgetBuilder(
                rotateTrasition: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transform.scale(
                      scale: 1.2, child: Image.asset(imagePath)),
                )),
          ],
        ),
      ),
      const SizedBox(
        height: 60,
      ),
      _animatorWidgetBuilder(
        millisecondsDelay: 250,
        child: FittedBox(
          child: Text(
            title,
            style: typography.bodyText5,
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      _animatorWidgetBuilder(
        millisecondsDelay: 500,
        child: Text(
          description,
          style: typography.bodyText2.copyWith(color: colorPalette.gray2),
          textAlign: TextAlign.start,
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      _animatorWidgetBuilder(
        millisecondsDelay: 750,
        child: ArrowTitleButtonWidget(
          title: context.locale.seeCollection,
          onTap: () {},
          color: colorPalette.accent1,
          icon: Icons.arrow_forward_rounded,
          iconSize: 23,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    ]);
  }
}
