part of '../featured_products_widget.dart';

class _FeaturedProductsWidgetPhone extends StatefulWidget {
  const _FeaturedProductsWidgetPhone({
    super.key,
  });

  @override
  State<_FeaturedProductsWidgetPhone> createState() =>
      _FeaturedProductsWidgetPhoneState();
}

class _FeaturedProductsWidgetPhoneState
    extends State<_FeaturedProductsWidgetPhone> {
  final PageController scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getIt<SizeConfig>().padding,
          vertical: 50,
        ),
        child: Column(
          children: [
            // Lable of 'FeaturedProducts'
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _animatorWidgetBuilder(
                  offsetDx: -.1,
                  child: Text(
                    context.locale.featuredProducts,
                    style: typography.h4Title
                        .copyWith(color: colorPalette.darkPrimary),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),

            // Here we change mouse cursor when pointer hover the items
            MouseRegion(
              cursor: _mouseCursor(_isGrabingMouse),
              child: GestureDetector(
                onTapDown: (_) => _onTapDown(setState),
                onTapUp: (_) => _onTapUp(setState),
                onTapCancel: () => _onTapCancel(setState),
                child: SizedBox(
                  width: 1.w(context),
                  height: _pageViewHeight,
                  child: ScrollbarWidget(
                    scrollController: scrollController,
                    child: PageView.builder(
                        itemCount: featuredProductsEntities.length,
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = featuredProductsEntities[index];
                          return FeaturedProductsItemWidget(
                            gradients: _gradients,
                            item: item,
                            index: index,
                          );
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
