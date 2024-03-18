part of '../about_us_founder_message_widget.dart';

class _AboutUsFounderMessageWidgetPhone extends StatelessWidget {
  const _AboutUsFounderMessageWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      color: colorPalette.gray6,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getIt<SizeConfig>().padding,
          vertical: 60,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                const SizedBox(
                  height: 32,
                ),
                AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  delay: const Duration(milliseconds: 100),
                  child: Text(
                    context.locale
                        .iStronglyBelieveThatThisUiKitWillHelpMyBusinessGrow,
                    style: typography.h5Title,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  delay: const Duration(milliseconds: 200),
                  child: Text(
                    context.locale
                        .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                    style: typography.bodyText1
                        .copyWith(color: colorPalette.gray2),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .5), end: Offset.zero),
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    context.locale.forExplosiveEventsSprintsUTo400Metres,
                    style: typography.bodyText1
                        .copyWith(color: colorPalette.gray2),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  delay: const Duration(milliseconds: 400),
                  child: Text(
                    context.locale
                        .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                    style: typography.bodyText1
                        .copyWith(color: colorPalette.gray2),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 500),
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
            ),
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 600),
              slideTransition: Tween<Offset>(
                begin: const Offset(0, .1),
                end: Offset.zero,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                  ),
                  child: SizedBox(
                      height: 500,
                      width: 1.w(context),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          AssetHandler.manager,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
