part of '../home_page_title_widget.dart';

class _HomePageTitleWidgetWeb extends StatelessWidget {
  const _HomePageTitleWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.12.h(context)),
      child: SizedBox(
        height: 0.75.h(context),
        width: 0.9.w(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 0.5.w(context),
              child: AnimatorTextWidget(
                context.locale.getYourAwesomeSneakers,
                style: typography.heroTitle,
                initialDelay: const Duration(milliseconds: 1500),
                spaceDelay: Duration.zero,
                incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                    blur: const Offset(0, 20),
                    duration: const Duration(milliseconds: 170)),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 0.25.w(context),
              child: AnimatorTextWidget(
                context.locale.weOfferTheBestDealsInOurShop,
                style: typography.bodyText3.copyWith(color: colorPalette.gray1),
                spaceDelay: Duration.zero,
                initialDelay: const Duration(milliseconds: 1500),
                characterDelay: const Duration(milliseconds: 14),
                incomingEffect:
                    WidgetTransitionEffects.incomingOffsetThenScaleAndStep(
                        duration: const Duration(milliseconds: 130)),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromBottom(
                    delay: const Duration(milliseconds: 2700),
                    blur: const Offset(20, 0),
                  ),
                  child: ButtonWidget(
                    title: context.locale.shopNow,
                    color: colorPalette.accent4,
                  ),
                ),
                const SizedBox(
                  width: 64,
                ),
                WidgetAnimator(
                  incomingEffect:
                      WidgetTransitionEffects.incomingSlideInFromRight(
                    delay: const Duration(milliseconds: 2900),
                    blur: const Offset(20, 0),
                  ),
                  child: Icon(
                    FontAwesome.heart,
                    color: colorPalette.accent4,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            const OffersWidget(),
          ],
        ),
      ),
    );
  }
}
