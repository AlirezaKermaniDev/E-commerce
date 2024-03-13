part of '../about_us_papular_brands_widget.dart';

class _AboutUsPopularBrandsWidgetWeb extends StatelessWidget {
  const _AboutUsPopularBrandsWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: double.infinity,
      color: colorPalette.darkPrimary,
      child: ConstraintsWidget(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.locale.popularBrands.toUpperCase(),
                            style: typography.bodyText2.copyWith(
                                color: colorPalette.accent2,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            context.locale
                                .weSellAmazingProductsFromBrandsThatLovesUs,
                            style: typography.h4Title
                                .copyWith(color: colorPalette.primary),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            context.locale
                                .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                            style: typography.bodyText1
                                .copyWith(color: colorPalette.gray4),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            context.locale.forExplosiveEventsSprintsUTo400Metres,
                            style: typography.bodyText1
                                .copyWith(color: colorPalette.gray4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getIt<SizeConfig>().padding,
                  ),
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
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
                    ),
                  )
                ],
              ),
              SvgPicture.asset(
                AssetHandler.shape4,
                height: 70,
                width: 70,
              ),
              Positioned(
                right: 50,
                bottom: 30,
                child: SvgPicture.asset(
                  AssetHandler.shape2,
                  height: 50,
                  width: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
