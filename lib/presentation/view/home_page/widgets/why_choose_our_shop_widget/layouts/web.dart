part of '../why_choose_our_shop_widget.dart';

class _WhyChooseOurShopWidgetWeb extends StatelessWidget {
  const _WhyChooseOurShopWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(-.1, 0), end: Offset.zero),
                  withFadeTransition: true,
                  child: Image.asset(AssetHandler.banner1))),
          SizedBox(
            width: getIt<SizeConfig>().padding,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
                withFadeTransition: true,
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
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
                withFadeTransition: true,
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
                      child: shoupBenefitsItemBuilder(
                          FontAwesome.car, context.locale.fastDelivery)),
                  Expanded(
                    child: shoupBenefitsItemBuilder(
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
                      child: shoupBenefitsItemBuilder(
                          FontAwesome.wallet, context.locale.coolPrices)),
                  Expanded(
                    child: shoupBenefitsItemBuilder(
                        FontAwesome.thumbs_up, context.locale.highQuality),
                  ),
                ],
              ),
            ],
          ))
        ],
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
