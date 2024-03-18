part of '../about_us_features_widget.dart';

class _AboutUsFeaturesWidgetPhone extends StatelessWidget {
  const _AboutUsFeaturesWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getIt<SizeConfig>().padding, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Text(
                context.locale.makingHighQualityProducts,
                style: typography.h5Title,
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              delay: const Duration(milliseconds: 250),
              child: SizedBox(
                width: .9.w(context),
                child: Text(
                  context.locale.forExplosiveEventsSprintsUTo400Metres,
                  style:
                      typography.bodyText2.copyWith(color: colorPalette.gray2),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
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
          ],
        ),
      ),
    );
  }
}
