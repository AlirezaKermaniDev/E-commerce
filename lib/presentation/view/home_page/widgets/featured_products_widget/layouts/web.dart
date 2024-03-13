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
  bool _isGrabingMouse = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              AnimatorWidget(
                slideTransition:
                    Tween<Offset>(begin: const Offset(.1, 0), end: Offset.zero),
                withFadeTransition: true,
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
                  child: ListView.builder(
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
    );
  }
}
