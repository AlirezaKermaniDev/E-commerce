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
              _animatorWidgetBuilder(
                millisecondsDelay: 200,
                child: Text(
                  item.categories?.last ?? "",
                  style: typography.bodyText1.copyWith(
                    color: colorPalette.gray2,
                  ),
                ),
              ),
              _animatorWidgetBuilder(
                millisecondsDelay: 300,
                child: RatebarWidget(
                  activeColor: colorPalette.darkPrimary,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 400,
            child: Text(
              item.title ?? "",
              style: typography.h2Title,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          _animatorWidgetBuilder(
              millisecondsDelay: 500,
              child: AvailableColorsWidget(colors: item.colors ?? [])),
          const SizedBox(
            height: 25,
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 600,
            child: Text(
              "\$${item.price}",
              style: typography.h4Title,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 700,
            child: Text(
              item.description ?? "",
              style: typography.bodyText2.copyWith(color: colorPalette.gray2),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 800,
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
          _animatorWidgetBuilder(
            millisecondsDelay: 2300,
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 2300,
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
                        .map(
                          (name) => MaterialitemWidget(value: name),
                        )
                        .toList(),
                  )),
            ),
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 2400,
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 2400,
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
          _animatorWidgetBuilder(
            millisecondsDelay: 2500,
            child: Divider(
              height: 1.5,
              color: colorPalette.gray4,
            ),
          ),
          _animatorWidgetBuilder(
            millisecondsDelay: 2500,
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
          _animatorWidgetBuilder(
            millisecondsDelay: 2500,
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
