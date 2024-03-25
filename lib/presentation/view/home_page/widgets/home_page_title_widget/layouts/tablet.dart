part of '../home_page_title_widget.dart';

class _HomePageTitleWidgetTablet extends StatelessWidget {
  const _HomePageTitleWidgetTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      width: 0.9.w(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Space form top
          const SizedBox(
            height: 50,
          ),
          // Home page landing Big title
          SizedBox(
            width: 0.50.w(context),
            child: AnimatorTextWidget(
              context.locale.getYourAwesomeSneakers,
              style: typography.h1Title,
              initialDelay: _animatorTextInitialDelay,
              spaceDelay: _animatorTextSpaceDelay,
              incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                  blur: const Offset(0, 20),
                  duration: const Duration(milliseconds: 170)),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          // Home page landing description
          SizedBox(
            width: 0.4.w(context),
            child: AnimatorTextWidget(
              context.locale.weOfferTheBestDealsInOurShop,
              style: typography.bodyText3.copyWith(color: colorPalette.gray1),
              spaceDelay: _animatorTextSpaceDelay,
              initialDelay: _animatorTextInitialDelay,
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
          // Home page landing actions
          const HomeTitleActionsWidget(),
          const SizedBox(
            height: 70,
          ),
          // Home page landing Offers
          const OffersWidget(),
        ],
      ),
    );
  }
}
