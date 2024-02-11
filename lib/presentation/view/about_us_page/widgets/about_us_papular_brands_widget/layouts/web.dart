part of '../about_us_papular_brands_widget.dart';

class _AboutUsPopularBrandsWidgetWeb extends StatelessWidget {
  const _AboutUsPopularBrandsWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: 1.w(context),
      color: colorPalette.darkPrimary,
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
                          "popular brands".toUpperCase(),
                          style: typography.bodyText2.copyWith(
                              color: colorPalette.accent2,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "We sell amazing products from brands that loves us.",
                          style: typography.h4Title
                              .copyWith(color: colorPalette.primary),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          "For athletes, high altitude produces two contradictory effects on performance.",
                          style: typography.bodyText1
                              .copyWith(color: colorPalette.gray4),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          "For explosive events (sprints up to 400 metres, long jump, triple jump) the reduction in atmospheric pressure means there is less resistance from the atmosphere.",
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
                          PapularBrandsItemWidget(
                            iconPath: CustomIcons.nike,
                          ),
                          PapularBrandsItemWidget(
                            iconPath: CustomIcons.adidas,
                          ),
                          PapularBrandsItemWidget(
                            iconPath: CustomIcons.newBalance,
                          ),
                          PapularBrandsItemWidget(
                            iconPath: CustomIcons.puma,
                          ),
                          PapularBrandsItemWidget(
                            iconPath: CustomIcons.nike,
                          ),
                          PapularBrandsItemWidget(
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
    );
  }
}
