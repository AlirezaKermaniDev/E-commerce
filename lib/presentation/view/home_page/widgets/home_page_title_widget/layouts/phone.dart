part of '../home_page_title_widget.dart';

class _HomePageTitleWidgetPhone extends StatelessWidget {
  const _HomePageTitleWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 510,
      width: 0.9.w(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 1.w(context),
            child: AnimatorTextWidget(
              context.locale.getYourAwesomeSneakers,
              style: typography.h1Title,
              initialDelay: const Duration(milliseconds: 1500),
              spaceDelay: Duration.zero,
              incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                  blur: const Offset(0, 20),
                  duration: const Duration(milliseconds: 170)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          SizedBox(
            width: 1.w(context),
            child: AnimatorTextWidget(
              context.locale.weOfferTheBestDealsInOurShop,
              style: typography.bodyText3.copyWith(color: colorPalette.gray1),
              spaceDelay: Duration.zero,
              initialDelay: const Duration(milliseconds: 1500),
              characterDelay: const Duration(milliseconds: 14),
              incomingEffect:
                  WidgetTransitionEffects.incomingOffsetThenScaleAndStep(
                      duration: const Duration(milliseconds: 130)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
