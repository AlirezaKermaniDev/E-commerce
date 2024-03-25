part of '../why_choose_our_shop_widget.dart';

class _WhyChooseOurShopWidgetWeb extends StatelessWidget {
  const _WhyChooseOurShopWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getIt<SizeConfig>().padding, vertical: 120),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: _animatorWidgetBuilder(
                    slideBeginOffset: const Offset(-.1, 0),
                    child: Image.asset(AssetHandler.banner1))),
            SizedBox(
              width: getIt<SizeConfig>().padding,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _animatorWidgetBuilder(
                  child: Text(
                    context.locale.whyChooseOurShop,
                    style: typography.h3Title.copyWith(
                      color: colorPalette.darkPrimary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                _animatorWidgetBuilder(
                  child: Text(
                    context.locale.forExplosiveEventsSprintsUTo400Metres,
                    style: typography.bodyText1.copyWith(
                      color: colorPalette.gray1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                        child: _shoupBenefitsItemBuilder(
                            FontAwesome.car, context.locale.fastDelivery)),
                    Expanded(
                      child: _shoupBenefitsItemBuilder(
                          FontAwesome.headphones, context.locale.greatSupport),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                        child: _shoupBenefitsItemBuilder(
                            FontAwesome.wallet, context.locale.coolPrices)),
                    Expanded(
                      child: _shoupBenefitsItemBuilder(
                          FontAwesome.thumbs_up, context.locale.highQuality),
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
