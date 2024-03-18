part of '../about_us_landing_widget.dart';

class _AboutUsLandingWidgetTablet extends StatelessWidget {
  const _AboutUsLandingWidgetTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 1.w(context),
      decoration: BoxDecoration(color: colorPalette.darkPrimary),
      child: Stack(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
                flex: 7,
                child: AnimatorWidget(
                  scaleTransition: Tween<double>(begin: .9, end: 1),
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 700),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(AssetHandler.banner4),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 85, left: 50),
                            child: ToolTipWidget(
                              preferredDirection: AxisDirection.right,
                              padding: EdgeInsets.only(left: 12, top: 64),
                              content: PurchasedTooltipContentWidget(),
                            )),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              width: 30,
            ),
            Expanded(
                flex: 5,
                child: AnimatorWidget(
                  scaleTransition: Tween<double>(begin: .9, end: 1),
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 1100),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: Image.asset(
                          AssetHandler.banner3,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 150),
                        child: ToolTipWidget(
                          preferredDirection: AxisDirection.up,
                          padding: EdgeInsets.only(bottom: 16),
                          content: ProductDetailTooltipContentWidget(),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              width: 30,
            ),
            Expanded(
                flex: 5,
                child: AnimatorWidget(
                  scaleTransition: Tween<double>(begin: .9, end: 1),
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 1500),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        AssetHandler.banner2,
                        fit: BoxFit.cover,
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 500),
                          child: ToolTipWidget(
                            preferredDirection: AxisDirection.up,
                            padding: EdgeInsets.only(bottom: 16),
                            content: DiscountToolTipContentWidget(),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 50, horizontal: getIt<SizeConfig>().padding),
          child: SizedBox(
            width: 624,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatorTextWidget(
                  context.locale.aboutUs,
                  style: typography.bodyText1
                      .copyWith(color: colorPalette.accent4),
                  initialDelay: const Duration(milliseconds: 300),
                ),
                const SizedBox(
                  height: 10,
                ),
                AnimatorTextWidget(
                  context.locale.bestUIKitForYourOnlineStore,
                  maxLines: 2,
                  style: typography.heroTitle
                      .copyWith(color: colorPalette.primary),
                  initialDelay: const Duration(milliseconds: 1000),
                  spaceDelay: Duration.zero,
                  incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                      blur: const Offset(0, 20),
                      duration: const Duration(milliseconds: 170)),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
