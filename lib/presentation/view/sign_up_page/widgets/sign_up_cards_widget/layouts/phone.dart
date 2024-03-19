part of '../sign_up_cards_widget.dart';

class _SignUpCardsWidgetPhone extends StatelessWidget {
  const _SignUpCardsWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      withVisibilityDetector: false,
      delay: const Duration(milliseconds: 700),
      child: Container(
        height: double.infinity,
        color: colorPalette.accent1.withOpacity(.1),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 200),
                child: Container(
                  height: 300,
                  width: 550,
                  decoration: BoxDecoration(
                    gradient: colorPalette.gradient1,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(1000),
                      bottomLeft: Radius.circular(1000),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, left: 500),
                child: SvgPicture.asset(AssetHandler.shape5),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: AnimatorWidget(
                    withFadeTransition: true,
                    withVisibilityDetector: false,
                    delay: const Duration(milliseconds: 100),
                    scaleTransition: Tween<double>(
                      begin: .8,
                      end: 1,
                    ),
                    child: SizedBox(
                        height: 400, child: Image.asset(AssetHandler.card5))),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 200),
                child: AnimatorWidget(
                  withFadeTransition: true,
                  withVisibilityDetector: false,
                  delay: const Duration(milliseconds: 200),
                  scaleTransition: Tween<double>(
                    begin: .8,
                    end: 1,
                  ),
                  child: SizedBox(
                      width: 230,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AssetHandler.card3))),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100, right: 200),
                child: AnimatorWidget(
                    withFadeTransition: true,
                    withVisibilityDetector: false,
                    delay: const Duration(milliseconds: 300),
                    slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1),
                      end: Offset.zero,
                    ),
                    child: SizedBox(
                        height: 250, child: Image.asset(AssetHandler.card4))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatorTextWidget(
                    context.locale.ecommerceUiKitMadeForYourBusiness,
                    style: typography.bodyText5
                        .copyWith(color: colorPalette.accent1),
                    initialDelay: const Duration(milliseconds: 1800),
                    spaceDelay: Duration.zero,
                    incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                        blur: const Offset(0, 20),
                        duration: const Duration(milliseconds: 170)),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatorTextWidget(
                    context.locale.theyCanBeUsedToDeliverSpacecraft,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray1),
                    initialDelay: const Duration(milliseconds: 3000),
                    spaceDelay: Duration.zero,
                    incomingEffect: WidgetTransitionEffects.incomingScaleUp(
                        blur: const Offset(0, 20),
                        duration: const Duration(milliseconds: 170)),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
