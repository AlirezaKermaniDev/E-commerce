part of '../home_page_title_widget.dart';

class _HomePageTitleWidgetPhone extends StatelessWidget {
  const _HomePageTitleWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Home page landing Big title
          SizedBox(
            width: 1.w(context),
            child: AnimatorTextWidget(
              context.locale.getYourAwesomeSneakers,
              style: typography.h4Title,
              initialDelay: const Duration(milliseconds: 1500),
              spaceDelay: Duration.zero,
              incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                  blur: const Offset(0, 20),
                  duration: const Duration(milliseconds: 170)),
              textAlign: TextAlign.center,
            ),
          ),
          _phonePageSpacer(),
          // Home page landing description
          SizedBox(
            width: 1.w(context),
            child: AnimatorTextWidget(
              context.locale.weOfferTheBestDealsInOurShop,
              style: typography.bodyText2.copyWith(color: colorPalette.gray1),
              spaceDelay: Duration.zero,
              initialDelay: const Duration(milliseconds: 1500),
              characterDelay: const Duration(milliseconds: 14),
              incomingEffect:
                  WidgetTransitionEffects.incomingOffsetThenScaleAndStep(
                      duration: const Duration(milliseconds: 130)),
              textAlign: TextAlign.center,
            ),
          ),
          _phonePageSpacer(),
          // Home page landing actions
          const HomeTitleActionsWidget(),
          _phonePageSpacer(),
          // Home page landing Offers
          const OffersWidget(),
        ],
      ),
    );
  }
}
