part of '../product_detail_widget.dart';

class _ProductDetailWidgetWeb extends StatelessWidget {
  const _ProductDetailWidgetWeb({
    super.key,
    required this.item,
  });

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 200),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
                child: Text(
                  item.categories?.last ?? "",
                  style: typography.bodyText1.copyWith(
                    color: colorPalette.gray2,
                  ),
                ),
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 300),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
                child: RateBarWidget(
                  activeColor: colorPalette.darkPrimary,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 400),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Text(
              item.title ?? "",
              style: typography.h2Title,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 500),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
              child: AvailableColorsWidget(colors: item.colors ?? [])),
          const SizedBox(
            height: 25,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 600),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Text(
              "\$${item.price}",
              style: typography.h4Title,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 700),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Text(
              item.description ?? "",
              style: typography.bodyText2.copyWith(color: colorPalette.gray2),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 800),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Text(
              context.locale.selectSize,
              style: typography.bodyText1.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          AvailableSizesWidget(item: item),
          const SizedBox(
            height: 50,
          ),
          AddToCartButtonsWidget(item: item),
          const SizedBox(
            height: 50,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2300),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2300),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: FilterItemsWidget(
              title: context.locale.material,
              initialExpanded: false,
              textStyle: typography.bodyText1.copyWith(
                fontSize: 20,
              ),
              iconSize: 30,
              color: colorPalette.darkPrimary,
              headerHeight: 100,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 35, top: 16),
                  child: Row(
                    children: item.materials!
                        .map((e) => Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Text(
                                e,
                                style: typography.bodyText1
                                    .copyWith(color: colorPalette.gray2),
                              ),
                            ))
                        .toList(),
                  )),
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2400),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2400),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: FilterItemsWidget(
              title: context.locale.deliveryAndReturns,
              initialExpanded: false,
              textStyle: typography.bodyText1.copyWith(
                fontSize: 20,
              ),
              iconSize: 30,
              color: colorPalette.darkPrimary,
              headerHeight: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 35),
                child: Text(
                  item.deliveryAndReturns ?? "",
                  style:
                      typography.bodyText1.copyWith(color: colorPalette.gray2),
                ),
              ),
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2500),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2500),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: FilterItemsWidget(
              title: context.locale.description,
              initialExpanded: false,
              textStyle: typography.bodyText1.copyWith(
                fontSize: 20,
              ),
              iconSize: 30,
              color: colorPalette.darkPrimary,
              headerHeight: 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 35),
                child: Text(
                  item.description ?? "",
                  style:
                      typography.bodyText1.copyWith(color: colorPalette.gray2),
                ),
              ),
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 2500),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
