part of '../about_us_our_products_widget.dart';

class _AboutUsOurProductsWidgetWeb extends StatelessWidget {
  const _AboutUsOurProductsWidgetWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Column(
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: Text(
                "Our Products",
                style: typography.h2Title,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Expanded(
                    child: AboutUsOurProductsItemWidget(
                  title: "Running shoes for men",
                  description:
                      "This proved to be impossible using the traditional concepts of space and time.",
                  shapeGradient: colorPalette.gradient3,
                  imagePath: AssetHandler.shoe5,
                )),
                const SizedBox(
                  width: 70,
                ),
                Expanded(
                    child: AboutUsOurProductsItemWidget(
                  title: "Nike shoes for women",
                  description:
                      "This proved to be impossible using the traditional concepts of space and time. ",
                  shapeGradient: colorPalette.gradient1,
                  imagePath: AssetHandler.shoe2,
                )),
                const SizedBox(
                  width: 70,
                ),
                Expanded(
                    child: AboutUsOurProductsItemWidget(
                  title: "Adidas shoes for women",
                  description:
                      "This proved to be impossible using the traditional concepts of space and time.",
                  shapeGradient: colorPalette.gradient4,
                  imagePath: AssetHandler.shoe1,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
