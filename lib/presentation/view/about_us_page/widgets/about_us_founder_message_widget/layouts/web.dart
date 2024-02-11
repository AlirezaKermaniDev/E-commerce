part of '../about_us_founder_message_widget.dart';

class _AboutUsFounderMessageWidgetWeb extends StatelessWidget {
  const _AboutUsFounderMessageWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: .9.h(context),
      width: 1.w(context),
      color: colorPalette.gray6,
      child: Padding(
        padding: EdgeInsets.only(
            left: getIt<SizeConfig>().padding, top: 130, bottom: 100),
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
                    "Founder message".toUpperCase(),
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
                    "I strongly believe that this UI Kit will help my business grow.",
                    style: typography.h4Title,
                  ),
                ),
                AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .2), end: Offset.zero),
                  delay: const Duration(milliseconds: 500),
                  child: Text(
                    "For athletes, high altitude produces two contradictory effects on performance.",
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
                    "For explosive events (sprints up to 400 metres, long jump, triple jump) the reduction in atmospheric pressure means there is less resistance from the atmosphere.",
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
                    "For athletes, high altitude produces two contradictory effects on performance.",
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
            const SizedBox(
              width: 120,
            ),
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
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 0,
                                right: getIt<SizeConfig>().padding - 80),
                            child: SvgPicture.asset(AssetHandler.shape9),
                          )),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: 50, right: getIt<SizeConfig>().padding),
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
