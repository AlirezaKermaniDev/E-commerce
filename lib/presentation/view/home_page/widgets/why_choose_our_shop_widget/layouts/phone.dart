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
              height: 120,
            ),
            AnimatorWidget(
                slideTransition: Tween<Offset>(
                    begin: const Offset(-.1, 0), end: Offset.zero),
                withFadeTransition: true,
                child: SizedBox(
                    height: .5.w(context),
                    child: Image.asset(AssetHandler.banner1))),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  withFadeTransition: true,
                  child: Text(
                    context.locale.whyChooseOurShop,
                    style: typography.h2Title.copyWith(
                      color: colorPalette.darkPrimary,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  withFadeTransition: true,
                  child: SizedBox(
                    width: .7.w(context),
                    child: Text(
                      context.locale.forExplosiveEventsSprintsUTo400Metres,
                      style: typography.bodyText1.copyWith(
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        shoupBenefitsItemBuilder(
                            FontAwesome.car, context.locale.fastDelivery),
                        const SizedBox(
                          height: 25,
                        ),
                        shoupBenefitsItemBuilder(FontAwesome.headphones,
                            context.locale.greatSupport),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        shoupBenefitsItemBuilder(
                            FontAwesome.wallet, context.locale.coolPrices),
                        const SizedBox(
                          height: 25,
                        ),
                        shoupBenefitsItemBuilder(
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

  Widget shoupBenefitsItemBuilder(IconData icon, String title) {
    return AnimatorWidget(
      slideTransition:
          Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
      withFadeTransition: true,
      child: Row(
        children: [
          Icon(
            icon,
            color: colorPalette.accent1,
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            title,
            style: typography.bodyText1.copyWith(
              color: colorPalette.darkPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
