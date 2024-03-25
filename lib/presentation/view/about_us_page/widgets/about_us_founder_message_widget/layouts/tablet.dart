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
        padding: _padding(context),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    _animatorWidgetBuilder(
                      millisecondsDelay: 250,
                      child: Text(
                        context.locale
                            .iStronglyBelieveThatThisUiKitWillHelpMyBusinessGrow,
                        style: typography.h4Title,
                      ),
                    ),
                    _animatorWidgetBuilder(
                      millisecondsDelay: 500,
                      child: Text(
                        context.locale
                            .forAthletesHighAltitudeProducesTwoContradictoryEffectsOnPerformance,
                        style: typography.bodyText1
                            .copyWith(color: colorPalette.gray2),
                      ),
                    ),
                    _animatorWidgetBuilder(
                      millisecondsDelay: 750,
                      slideOffsetDy: .5,
                      child: Text(
                        context.locale.forExplosiveEventsSprintsUTo400Metres,
                        style: typography.bodyText1
                            .copyWith(color: colorPalette.gray2),
                      ),
                    ),
                    _animatorWidgetBuilder(
                      millisecondsDelay: 1000,
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
                      child: _animatorWidgetBuilder(
                        millisecondsDelay: 1250,
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
                child: _animatorWidgetBuilder(
                  millisecondsDelay: 250,
                  child: Stack(
                    children: [
                      Align(
                          alignment: _shapeAlignment(context),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: getIt<SizeConfig>().padding - 50,
                                vertical: 30),
                            child: SvgPicture.asset(AssetHandler.shape9),
                          )),
                      Align(
                        alignment: _founderImageAlignment(context),
                        child: Padding(
                          padding: _founderImagePadding,
                          child: SizedBox(
                            height: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                AssetHandler.manager,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
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
