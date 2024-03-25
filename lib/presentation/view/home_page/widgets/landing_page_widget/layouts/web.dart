part of '../landing_page_widget.dart';

class _LandingPageWidgetWeb extends StatelessWidget {
  const _LandingPageWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPalette.gray6,
      child: ConstraintsWidget(
        child: Stack(
          children: [
            // Home page title
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getIt<SizeConfig>().padding,
                ),
                child: const HomePageTitleWidget(),
              ),
            ),
           // Home Banner(List of shoes)
            Align(
                alignment: _bannerAlignment(context),
                child: const HomeBannerWidget()),
          ],
        ),
      ),
    );
  }


}
