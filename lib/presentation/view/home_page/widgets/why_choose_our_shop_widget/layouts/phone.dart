part of '../why_choose_our_shop_widget.dart';

class _WhyChooseOurShopWidgetPhone extends StatelessWidget {
  const _WhyChooseOurShopWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            _animatorWidgetBuilder(
                slideBeginOffset: const Offset(-.1, 0),
                child: SizedBox(
                    height: .5.w(context),
                    child: Image.asset(AssetHandler.banner1))),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _animatorWidgetBuilder(
                  child: Text(
                    context.locale.whyChooseOurShop,
                    style: typography.h4Title.copyWith(
                      color: colorPalette.darkPrimary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _animatorWidgetBuilder(
                  child: SizedBox(
                    width: .9.w(context),
                    child: Text(
                      context.locale.forExplosiveEventsSprintsUTo400Metres,
                      style: typography.bodyText2.copyWith(
                        color: colorPalette.gray1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _shoupBenefitsItemBuilder(
                            FontAwesome.car, context.locale.fastDelivery),
                        const SizedBox(
                          height: 25,
                        ),
                        _shoupBenefitsItemBuilder(
                            FontAwesome.headphones, context.locale.greatSupport),
                        const SizedBox(
                          height: 25,
                        ),
                        _shoupBenefitsItemBuilder(
                            FontAwesome.wallet, context.locale.coolPrices),
                        const SizedBox(
                          height: 25,
                        ),
                        _shoupBenefitsItemBuilder(
                            FontAwesome.thumbs_up, context.locale.highQuality),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
