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
  final List<FeaturedProductsEntity> _featuredProductsEntities = [
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe1,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 1,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe2,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 2,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe3,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 3,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe6,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 4,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe1,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 1,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe2,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 2,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe3,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 3,
        price: 120.50),
    const FeaturedProductsEntity(
        imageUrl: AssetHandler.shoe6,
        title: "Adidas Falcon Shoes for men - 2021 Edition",
        rate: 4,
        gradientType: 4,
        price: 120.50),
  ];

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
                      itemCount: _featuredProductsEntities.length,
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = _featuredProductsEntities[index];
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
