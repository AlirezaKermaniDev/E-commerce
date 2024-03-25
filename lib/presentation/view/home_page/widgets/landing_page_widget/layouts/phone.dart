part of '../landing_page_widget.dart';

class _LandingPageWidgetPhone extends StatelessWidget {
  const _LandingPageWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorPalette.gray6,
      child: ConstraintsWidget(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getIt<SizeConfig>().padding,
              ),
              child: const HomePageTitleWidget(),
            ),
                 const SizedBox(
              height: 32,
            ),
            const HomeBannerWidget(),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
