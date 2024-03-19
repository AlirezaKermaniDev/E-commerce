part of '../sign_in_cards_widget.dart';

class _SignInCardsWidgetPhone extends StatelessWidget {
  const _SignInCardsWidgetPhone({
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50, right: 50),
                  child: Container(
                    height: 350,
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
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 300, right: 192),
                  child: AnimatorWidget(
                    withFadeTransition: true,
                    withVisibilityDetector: false,
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
                  padding: const EdgeInsets.only(right: 192, top: 125),
                  child: AnimatorWidget(
                      withFadeTransition: true,
                      withVisibilityDetector: false,
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
                  padding: const EdgeInsets.only(top: 230, left: 187),
                  child: AnimatorWidget(
                      withFadeTransition: true,
                      withVisibilityDetector: false,
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
                  padding: const EdgeInsets.only(bottom: 100, left: 194),
                  child: AnimatorWidget(
                      withFadeTransition: true,
                      withVisibilityDetector: false,
                      delay: const Duration(milliseconds: 300),
                      scaleTransition: Tween<double>(
                        begin: .8,
                        end: 1,
                      ),
                      child: SizedBox(
                          height: 280, child: Image.asset(AssetHandler.card2))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatorTextWidget(
                      context.locale.joinOurCustomersClub,
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
      ),
    );
  }
}
