part of '../about_us_founder_message_widget.dart';

class _AboutUsFounderMessageWidgetTablet extends StatelessWidget {
  const _AboutUsFounderMessageWidgetTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .7.h(context),
      width: 1.w(context),
      color: colorPalette.gray6,
      child: Padding(
        padding: EdgeInsets.only(
            left: context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
            right: context.isLtrLocale ? 0 : getIt<SizeConfig>().padding,
            top: 130,
            bottom: 100),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .2), end: Offset.zero),
                      child: Text(
                        context.locale.founderMessage.toUpperCase(),
                        style: typography.bodyText2.copyWith(
                            color: colorPalette.accent2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .2), end: Offset.zero),
                      delay: const Duration(milliseconds: 250),
                      child: Text(
                        context.locale
                            .iStronglyBelieveThatThisUiKitWillHelpMyBusinessGrow,
                        style: typography.h4Title,
                      ),
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .2), end: Offset.zero),
                      delay: const Duration(milliseconds: 500),
                      child: Text(
                        context.locale
                            .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                        style: typography.bodyText1
                            .copyWith(color: colorPalette.gray2),
                      ),
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .5), end: Offset.zero),
                      delay: const Duration(milliseconds: 750),
                      child: Text(
                        context.locale.forExplosiveEventsSprintsUTo400Metres,
                        style: typography.bodyText1
                            .copyWith(color: colorPalette.gray2),
                      ),
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .2), end: Offset.zero),
                      delay: const Duration(milliseconds: 1000),
                      child: Text(
                        context.locale
                            .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                        style: typography.bodyText1
                            .copyWith(color: colorPalette.gray2),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: AnimatorWidget(
                        withFadeTransition: true,
                        delay: const Duration(milliseconds: 1250),
                        slideTransition: Tween<Offset>(
                          begin: const Offset(0, .2),
                          end: Offset.zero,
                        ),
                        child: Image.asset(
                          AssetHandler.signature,
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 4,
                child: AnimatorWidget(
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 250),
                  slideTransition: Tween<Offset>(
                    begin: const Offset(.2, 0),
                    end: Offset.zero,
                  ),
                  child: Stack(
                    children: [
                      Align(
                          alignment: context.isLtrLocale
                              ? Alignment.bottomRight
                              : Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getIt<SizeConfig>().padding - 50,vertical: 40),
                            child: SvgPicture.asset(AssetHandler.shape9),
                          )),
                      Align(
                        alignment: context.isLtrLocale
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 25,
                              horizontal: getIt<SizeConfig>().padding),
                          child: Image.asset(AssetHandler.manager),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
