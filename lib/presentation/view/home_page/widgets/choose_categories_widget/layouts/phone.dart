part of '../choose_categories_widget.dart';

class _ChooseCategoriesWidgetPhone extends StatelessWidget {
  _ChooseCategoriesWidgetPhone({
    super.key,
  });
  final PageController controller = PageController(viewportFraction: .9);
  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getIt<SizeConfig>().padding,
          vertical: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: .8.w(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatorWidget(
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .2), end: Offset.zero),
                    withFadeTransition: true,
                    child: Text(
                      context.locale.chooseCategories,
                      style: typography.h4Title.copyWith(
                        color: colorPalette.darkPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AnimatorWidget(
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .2), end: Offset.zero),
                    withFadeTransition: true,
                    child: Text(
                      context.locale.forExplosiveEventsSprintsUTo400Metres,
                      style: typography.bodyText2.copyWith(
                        color: colorPalette.gray1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 600,
              width: 1.w(context),
              child: ScrollbarWidget(
                scrollController: controller,
                padding: EdgeInsets.symmetric(horizontal: .15.w(context)),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 70),
                      child: CategoryItemWidget(
                        mainColor: colorPalette.accent1,
                        title: context.locale.sneakersCollection,
                        productsCount: 120,
                        shapePath: AssetHandler.shape6,
                        imageWidget: Padding(
                          padding: const EdgeInsets.only(left: 30,bottom: 30),
                          child: Transform.rotate(
                              angle: -.5,
                              child: Transform.scale(
                                  scale: 1.3,
                                  child: Image.asset(AssetHandler.shoe3))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 70),
                      child: CategoryItemWidget(
                        mainColor: colorPalette.accent3,
                        title: context.locale.footballCollection,
                        productsCount: 87,
                        shapePath: AssetHandler.shape8,
                        imageWidget: Padding(
                          padding: const EdgeInsets.only(top: 200, left: 80),
                          child: Transform.scale(
                              scale: 1.3,
                              child: Image.asset(AssetHandler.ball)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 70),
                      child: CategoryItemWidget(
                        mainColor: colorPalette.accent4,
                        title: context.locale.volleyballCollection,
                        productsCount: 68,
                        shapePath: AssetHandler.shape7,
                        imageWidget: Padding(
                          padding: const EdgeInsets.only(top: 100, left: 100),
                          child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(AssetHandler.volley)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
