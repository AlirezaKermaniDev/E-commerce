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
  bool _isGrabingMouse = false;

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getIt<SizeConfig>().padding, vertical: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(-.1, 0), end: Offset.zero),
                  withFadeTransition: true,
                  child: Text(
                    context.locale.featuredProducts,
                    style: typography.h2Title
                        .copyWith(color: colorPalette.darkPrimary),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            MouseRegion(
              cursor: _isGrabingMouse
                  ? SystemMouseCursors.grabbing
                  : SystemMouseCursors.grab,
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    _isGrabingMouse = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isGrabingMouse = false;
                  });
                },
                onTapCancel: () {
                  setState(() {
                    _isGrabingMouse = false;
                  });
                },
                child: SizedBox(
                  width: 1.w(context),
                  height: 450,
                  child: ScrollbarWidget(
                    scrollController: scrollController,
                    child: PageView.builder(
                        itemCount: featuredProductsEntities.length,
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = featuredProductsEntities[index];
                          List<LinearGradient> gradients = [
                            colorPalette.gradient4,
                            colorPalette.gradient2,
                            colorPalette.gradient3,
                            colorPalette.gradient1,
                          ];
                          return FeaturedProductsItemWidget(
                              gradients: gradients, item: item, index: index);
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
