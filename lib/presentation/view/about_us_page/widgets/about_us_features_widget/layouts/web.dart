part of '../about_us_features_widget.dart';

class _AboutUsFeaturesWidgetWeb extends StatelessWidget {
  const _AboutUsFeaturesWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: Column(
        children: [
          AnimatorWidget(
            withFadeTransition: true,
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
            child: Text(
              "Making high quality products",
              style: typography.h2Title,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
            delay: const Duration(milliseconds: 250),
            child: SizedBox(
              width: .3.w(context),
              child: Text(
                "For explosive events (sprints up to 400 metres, long jump, triple jump) the reduction in atmospheric pressure means there is less resistance from the atmosphere.",
                style: typography.bodyText1.copyWith(color: colorPalette.gray2),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          AboutUsFeaturesItemWidget(
            title: "Our solution",
            description:
                "They were used to create the machines that launched two waves of industrial revolution — the first one powered by steam and the second one powered by electric current.",
            titleColor: colorPalette.accent1,
            imagePath: AssetHandler.banner1,
            shapePath: AssetHandler.shape10,
            isLtR: true,
          ),
          AboutUsFeaturesItemWidget(
            title: "Process",
            description:
                "They describe a universe consisting of bodies moving with clockwork predicatability on a stage of absolute space and time.",
            titleColor: colorPalette.accent3,
            imagePath: AssetHandler.banner6,
            shapePath: AssetHandler.shape9,
            isLtR: false,
          ),
          AboutUsFeaturesItemWidget(
            title: "Results",
            description:
                "Problems trying to resolve the conflict between the two major realms of Classical physics: Newtonian mechanics and Maxwell's theory of electrodynamics.",
            titleColor: colorPalette.accent2,
            imagePath: AssetHandler.banner5,
            shapePath: AssetHandler.shape11,
            isLtR: true,
          ),
        ],
      ),
    );
  }
}
