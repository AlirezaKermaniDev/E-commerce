part of '../about_us_landing_widget.dart';

class _AboutUsLandingWidgetPhone extends StatelessWidget {
  const _AboutUsLandingWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: colorPalette.darkPrimary),
      child: ConstraintsWidget(
        child: Column(children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
            child: AnimatorTextWidget(
              context.locale.bestUIKitForYourOnlineStore,
              maxLines: 2,
              style: typography.h4Title.copyWith(color: colorPalette.primary),
              initialDelay: const Duration(milliseconds: 1000),
              spaceDelay: Duration.zero,
              incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                  blur: const Offset(0, 20),
                  duration: const Duration(milliseconds: 170)),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _animatorWidgetBuilder(
                  millisecondsDelay: 1500,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getIt<SizeConfig>().padding),
                        child: SizedBox(
                          width: 1.w(context),
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              AssetHandler.banner4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 85, left: 50),
                            child: ToolTipWidget(
                              preferredDirection: AxisDirection.down,
                              padding: EdgeInsets.only(top: 16),
                              content: PurchasedTooltipContentWidget(),
                            )),
                      )
                    ],
                  ),
                ),
                _phoneSpacer,
                _animatorWidgetBuilder(
                  millisecondsDelay: 1600,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getIt<SizeConfig>().padding),
                        child: SizedBox(
                          width: 1.w(context),
                          height: 250,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              AssetHandler.banner3,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 80),
                        child: ToolTipWidget(
                          preferredDirection: AxisDirection.down,
                          padding: EdgeInsets.only(top: 16),
                          content: ProductDetailTooltipContentWidget(),
                        ),
                      )
                    ],
                  ),
                ),
                _phoneSpacer,
                _animatorWidgetBuilder(
                  millisecondsDelay: 100,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: getIt<SizeConfig>().padding),
                        child: SizedBox(
                          width: 1.w(context),
                          height: 400,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              AssetHandler.banner2,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 100),
                          child: ToolTipWidget(
                            preferredDirection: AxisDirection.up,
                            padding: EdgeInsets.only(bottom: 16),
                            content: DiscountToolTipContentWidget(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
