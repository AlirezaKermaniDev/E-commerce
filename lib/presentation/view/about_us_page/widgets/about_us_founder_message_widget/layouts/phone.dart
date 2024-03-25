part of '../about_us_founder_message_widget.dart';

class _AboutUsFounderMessageWidgetPhone extends StatelessWidget {
  const _AboutUsFounderMessageWidgetPhone({super.key});

  static const double _spacerValue = 32;

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
                _animatorWidgetBuilder(
                  child: Text(
                    context.locale.founderMessage.toUpperCase(),
                    style: typography.bodyText2.copyWith(
                        color: colorPalette.accent2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: _spacerValue,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 100,
                  child: Text(
                    context.locale
                        .iStronglyBelieveThatThisUiKitWillHelpMyBusinessGrow,
                    style: typography.h5Title,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: _spacerValue,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 200,
                  child: Text(
                    context.locale
                        .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                    style: typography.bodyText1
                        .copyWith(color: colorPalette.gray2),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: _spacerValue,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 300,
                  child: Text(
                    context.locale.forExplosiveEventsSprintsUTo400Metres,
                    style: typography.bodyText1
                        .copyWith(color: colorPalette.gray2),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: _spacerValue,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 400,
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
                  child: _animatorWidgetBuilder(
                    millisecondsDelay: 500,
                    child: Image.asset(
                      AssetHandler.signature,
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
            _animatorWidgetBuilder(
              millisecondsDelay: 600,
              slideOffsetDy: .1,
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
