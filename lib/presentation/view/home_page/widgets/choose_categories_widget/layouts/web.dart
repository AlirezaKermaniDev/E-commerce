part of '../choose_categories_widget.dart';

class _ChooseCategoriesWidgetWeb extends StatelessWidget {
  const _ChooseCategoriesWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: .5.w(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatorWidget(
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .2), end: Offset.zero),
                    withFadeTransition: true,
                    child: Text(
                      context.locale.chooseCategories,
                      style: typography.h2Title.copyWith(
                        color: colorPalette.darkPrimary,
                      ),
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
                      style: typography.bodyText1.copyWith(
                        color: colorPalette.gray1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Expanded(
                    child: CategoryItemWidget(
                  mainColor: colorPalette.accent1,
                  title: context.locale.sneakersCollection,
                  productsCount: 120,
                  shapePath: AssetHandler.shape6,
                  imageWidget: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Transform.rotate(
                        angle: -.5,
                        child: Transform.scale(
                            scale: 1.1,
                            child: Image.asset(AssetHandler.shoe3))),
                  ),
                )),
                const SizedBox(
                  width: 32,
                ),
                Expanded(
                    child: CategoryItemWidget(
                  mainColor: colorPalette.accent3,
                  title: context.locale.footballCollection,
                  productsCount: 87,
                  shapePath: AssetHandler.shape8,
                  imageWidget: Padding(
                    padding: const EdgeInsets.only(top: 270, right: 50),
                    child: Transform.scale(
                        scale: 1.7, child: Image.asset(AssetHandler.ball)),
                  ),
                )),
                const SizedBox(
                  width: 32,
                ),
                Expanded(
                    child: CategoryItemWidget(
                  mainColor: colorPalette.accent4,
                  title: context.locale.volleyballCollection,
                  productsCount: 68,
                  shapePath: AssetHandler.shape7,
                  imageWidget: Padding(
                    padding: const EdgeInsets.only(top: 270, right: 20),
                    child: Transform.scale(
                        scale: 1.3, child: Image.asset(AssetHandler.volley)),
                  ),
                )),
                const SizedBox(
                  width: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
