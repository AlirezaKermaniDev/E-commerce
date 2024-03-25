part of '../about_us_features_widget.dart';

class _AboutUsFeaturesWidgetTablet extends StatelessWidget {
  const _AboutUsFeaturesWidgetTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          _animatorWidgetBuilder(
            child: Text(
              context.locale.makingHighQualityProducts,
              style: typography.h2Title,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 250,
            child: SizedBox(
              width: .5.w(context),
              child: Text(
                context.locale.forExplosiveEventsSprintsUTo400Metres,
                style: typography.bodyText2.copyWith(color: colorPalette.gray3),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          AboutUsFeaturesItemWidget(
            title: context.locale.ourSolution,
            description: context
                .locale.theyWereUsedToCreateTheMachinesThatLaunchedTwoWaves,
            titleColor: colorPalette.accent1,
            imagePath: AssetHandler.banner1,
            shapePath: AssetHandler.shape10,
            isLtR: true,
          ),
          AboutUsFeaturesItemWidget(
            title: context.locale.process,
            description:
                context.locale.theyDescribeAUniverseConsistingOfBodiesMoving,
            titleColor: colorPalette.accent3,
            imagePath: AssetHandler.banner6,
            shapePath: AssetHandler.shape9,
            isLtR: false,
          ),
          AboutUsFeaturesItemWidget(
            title: context.locale.results,
            description:
                context.locale.problemsTryingToSesolveTheConflictBetween,
            titleColor: colorPalette.accent2,
            imagePath: AssetHandler.banner5,
            shapePath: AssetHandler.shape11,
            isLtR: true,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
