part of '../about_us_founder_message_widget.dart';

class _AboutUsFounderMessageWidgetWeb extends StatelessWidget {
  const _AboutUsFounderMessageWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .9.h(context),
      width: double.infinity,
      color: colorPalette.gray6,
      child: ConstraintsWidget(
        child: Padding(
          padding: EdgeInsets.only(
              left: context.isLtrLocale ? getIt<SizeConfig>().padding : 0,
              right: context.isLtrLocale ? 0 : getIt<SizeConfig>().padding,
              top: 130,
              bottom: 100),
          child: Row(
            children: [
              Expanded(
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
                  flex: 2,
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
                                  horizontal: getIt<SizeConfig>().padding - 80,
                                  vertical: 50),
                              child: SvgPicture.asset(AssetHandler.shape9),
                            )),
                        Align(
                          alignment: context.isLtrLocale
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              bottom: 100,
                              left: getIt<SizeConfig>().padding,
                              right: getIt<SizeConfig>().padding,
                            ),
                            child: SizedBox(
                                height: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    AssetHandler.manager,
                                    fit: BoxFit.fitHeight,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
