part of '../sign_in_cards_widget.dart';

class _SignInCardsWidgetWeb extends StatelessWidget {
  const _SignInCardsWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      delay: const Duration(milliseconds: 700),
      child: Container(
        height: double.infinity,
        color: colorPalette.accent1.withOpacity(.1),
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 130, vertical: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatorTextWidget(
                    context.locale.joinOurCustomersClub,
                    style: typography.h5Title
                        .copyWith(color: colorPalette.accent1),
                    initialDelay: const Duration(milliseconds: 1800),
                    spaceDelay: Duration.zero,
                    incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                        blur: const Offset(0, 20),
                        duration: const Duration(milliseconds: 170)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatorTextWidget(
                    context.locale.theyCanBeUsedToDeliverSpacecraft,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray2),
                    initialDelay: const Duration(milliseconds: 3000),
                    spaceDelay: Duration.zero,
                    incomingEffect: WidgetTransitionEffects.incomingScaleUp(
                        blur: const Offset(0, 20),
                        duration: const Duration(milliseconds: 170)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 480,
                width: 550,
                decoration: BoxDecoration(
                  gradient: colorPalette.gradient1,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(1000),
                    bottomRight: Radius.circular(1000),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 550, right: 700),
                child: WidgetAnimator(
                  atRestEffect: WidgetRestingEffects.wave(effectStrength: .5),
                  child: SvgPicture.asset(
                    AssetHandler.shape1,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 600),
                child: WidgetAnimator(
                  atRestEffect: WidgetRestingEffects.wave(),
                  child: SvgPicture.asset(
                    AssetHandler.shape2,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 550, left: 200),
                child: WidgetAnimator(
                    atRestEffect: WidgetRestingEffects.swing(
                      effectStrength: 6,
                    ),
                    child: SvgPicture.asset(AssetHandler.shape9)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 600, right: 300),
                child: WidgetAnimator(
                    atRestEffect: WidgetRestingEffects.wave(effectStrength: .5),
                    child: SvgPicture.asset(AssetHandler.shape6)),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 0, right: 600),
                child: SvgPicture.asset(AssetHandler.shape5),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 370, right: 305),
                child: AnimatorWidget(
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 100),
                  scaleTransition: Tween<double>(
                    begin: .8,
                    end: 1,
                  ),
                  child: SizedBox(
                      width: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AssetHandler.card6))),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 305, top: 200),
                child: AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 200),
                    slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1),
                      end: Offset.zero,
                    ),
                    child: SizedBox(
                        width: 250, child: Image.asset(AssetHandler.card))),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 400, left: 260),
                child: AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 300),
                    slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1),
                      end: Offset.zero,
                    ),
                    child: SizedBox(
                        height: 170, child: Image.asset(AssetHandler.card1))),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 65, left: 200),
                child: AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 300),
                    scaleTransition: Tween<double>(
                      begin: .8,
                      end: 1,
                    ),
                    child: SizedBox(
                        height: 280, child: Image.asset(AssetHandler.card2))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
