part of '../about_us_our_products_widget.dart';

class _AboutUsOurProductsWidgetWeb extends StatelessWidget {
  const _AboutUsOurProductsWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Column(
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Text(
                context.locale.ourProducts,
                style: typography.h2Title,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Expanded(
                    child: AboutUsOurProductsItemWidget(
                  title: context.locale.runningShoesForMen,
                  description: context.locale
                      .thisProvedToBeImpossibleUsingTheTraditionalConceptsOfSpaceAndTime,
                  shapeGradient: colorPalette.gradient3,
                  imagePath: AssetHandler.shoe5,
                )),
                const SizedBox(
                  width: 70,
                ),
                Expanded(
                    child: AboutUsOurProductsItemWidget(
                  title: context.locale.nikeShoesForWomen,
                  description: context.locale
                      .thisProvedToBeImpossibleUsingTheTraditionalConceptsOfSpaceAndTime,
                  shapeGradient: colorPalette.gradient1,
                  imagePath: AssetHandler.shoe2,
                )),
                const SizedBox(
                  width: 70,
                ),
                Expanded(
                    child: AboutUsOurProductsItemWidget(
                  title: context.locale.adidasShoesForWomen,
                  description: context.locale
                      .thisProvedToBeImpossibleUsingTheTraditionalConceptsOfSpaceAndTime,
                  shapeGradient: colorPalette.gradient4,
                  imagePath: AssetHandler.shoe1,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
