part of '../featured_products_widget.dart';

class _FeaturedProductsWidgetWeb extends StatefulWidget {
  const _FeaturedProductsWidgetWeb({
    super.key,
  });

  @override
  State<_FeaturedProductsWidgetWeb> createState() =>
      _FeaturedProductsWidgetWebState();
}

class _FeaturedProductsWidgetWebState
    extends State<_FeaturedProductsWidgetWeb> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getIt<SizeConfig>().padding,
          vertical: 140,
        ),
        child: Column(
          children: [
            
            // Lable of 'FeaturedProducts'
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _animatorWidgetBuilder(
                  offsetDx: -.1,
                  child: Text(
                    context.locale.featuredProducts,
                    style: typography.h2Title
                        .copyWith(color: colorPalette.darkPrimary),
                  ),
                ),
                _animatorWidgetBuilder(
                  offsetDx: .1,
                  child: ArrowTitleButtonWidget(
                    title: context.locale.viewAll,
                    onTap: () {},
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
                    child: ListView.builder(
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
