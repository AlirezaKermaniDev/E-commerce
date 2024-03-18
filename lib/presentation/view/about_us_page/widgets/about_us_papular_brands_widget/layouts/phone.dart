part of '../about_us_papular_brands_widget.dart';

class _AboutUsPopularBrandsWidgetPhone extends StatelessWidget {
  const _AboutUsPopularBrandsWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: colorPalette.darkPrimary,
      child: ConstraintsWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getIt<SizeConfig>().padding, vertical: 50),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.locale.popularBrands.toUpperCase(),
                    style: typography.bodyText2.copyWith(
                        color: colorPalette.accent2,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    context.locale.weSellAmazingProductsFromBrandsThatLovesUs,
                    style: typography.h5Title
                        .copyWith(color: colorPalette.primary),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    context.locale
                        .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray4),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    context.locale.forExplosiveEventsSprintsUTo400Metres,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray4),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    children: const [
                      PopularBrandsItemWidget(
                        iconPath: CustomIcons.nike,
                      ),
                      PopularBrandsItemWidget(
                        iconPath: CustomIcons.adidas,
                      ),
                      PopularBrandsItemWidget(
                        iconPath: CustomIcons.newBalance,
                      ),
                      PopularBrandsItemWidget(
                        iconPath: CustomIcons.puma,
                      ),
                      PopularBrandsItemWidget(
                        iconPath: CustomIcons.nike,
                      ),
                      PopularBrandsItemWidget(
                        iconPath: CustomIcons.adidas,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
