part of '../about_us_our_products_widget.dart';

class _AboutUsOurProductsWidgetPhone extends StatelessWidget {
  const _AboutUsOurProductsWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getIt<SizeConfig>().padding, vertical: 60),
        child: Column(
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Text(
                context.locale.ourProducts,
                style: typography.h4Title,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Column(
              children: [
                AboutUsOurProductsItemWidget(
                  title: context.locale.runningShoesForMen,
                  description: context.locale
                      .thisProvedToBeImpossibleUsingTheTraditionalConceptsOfSpaceAndTime,
                  shapeGradient: colorPalette.gradient2,
                  imagePath: AssetHandler.shoe3,
                ),
                const SizedBox(
                  height: 70,
                ),
                AboutUsOurProductsItemWidget(
                  title: context.locale.nikeShoesForWomen,
                  description: context.locale
                      .thisProvedToBeImpossibleUsingTheTraditionalConceptsOfSpaceAndTime,
                  shapeGradient: colorPalette.gradient1,
                  imagePath: AssetHandler.shoe2,
                ),
                const SizedBox(
                  height: 70,
                ),
                AboutUsOurProductsItemWidget(
                  title: context.locale.adidasShoesForWomen,
                  description: context.locale
                      .thisProvedToBeImpossibleUsingTheTraditionalConceptsOfSpaceAndTime,
                  shapeGradient: colorPalette.gradient4,
                  imagePath: AssetHandler.shoe1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
