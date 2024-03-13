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
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: const HomePageTitleWidget(),
              ),
            ),
            Align(
                alignment: context.isLtrLocale
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: const HomeBannerWidget()),
          ],
        ),
      ),
    );
  }
}
