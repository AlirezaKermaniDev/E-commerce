part of '../home_page_title_widget.dart';

class _HomePageTitleWidgetWeb extends StatelessWidget {
  const _HomePageTitleWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      width: 0.9.w(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Space form top
          SizedBox(
            height: 0.07.w(context),
          ),
          // Home page landing Big title
          SizedBox(
            width: 0.5.w(context),
            child: AnimatorTextWidget(
              context.locale.getYourAwesomeSneakers,
              style: typography.heroTitle,
              initialDelay: _animatorTextInitialDelay,
              spaceDelay: _animatorTextSpaceDelay,
              incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                blur: const Offset(0, 20),
                duration: const Duration(
                  milliseconds: 170,
                ),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 0.02.w(context),
          ),
          // Home page landing description
          SizedBox(
            width: 0.25.w(context),
            child: AnimatorTextWidget(
              context.locale.weOfferTheBestDealsInOurShop,
              style: typography.bodyText3.copyWith(color: colorPalette.gray1),
              spaceDelay: _animatorTextSpaceDelay,
              initialDelay: _animatorTextInitialDelay,
              characterDelay: const Duration(milliseconds: 14),
              incomingEffect:
                  WidgetTransitionEffects.incomingOffsetThenScaleAndStep(
                duration: const Duration(
                  milliseconds: 130,
                ),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 0.04.w(context),
          ),
          // Home page landing actions
          const HomeTitleActionsWidget(),
          SizedBox(
            height: 0.05.w(context),
          ),
          // Home page landing Offers
          const OffersWidget(),
        ],
      ),
    );
  }
}
