part of '../featured_products_item_widget.dart';

class _FeaturedProductsItemWidgetPhone extends StatefulWidget {
  const _FeaturedProductsItemWidgetPhone({
    super.key,
    required this.gradients,
    required this.item,
    required this.index,
  });

  final List<LinearGradient> gradients;
  final FeaturedProductsEntity item;
  final int index;

  @override
  State<_FeaturedProductsItemWidgetPhone> createState() =>
      _FeaturedProductsItemWidgetPhoneState();
}

class _FeaturedProductsItemWidgetPhoneState
    extends State<_FeaturedProductsItemWidgetPhone> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: _inkWellhHoverColor,
      onTap: () {},
      onHover: _onHover,
      child: SizedBox(
        width: _itemWidth(context),
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Center(
                  child: _animatorWidgetBuilder(
                    basemillisecondsDelay: 200,
                    withScale: true,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      height: _containerSize(_isHover, context),
                      width: _containerSize(_isHover, context),
                      decoration: BoxDecoration(
                        gradient:
                            widget.gradients[widget.item.gradientType! - 1],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Center(
                    child: _animatorWidgetBuilder(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                      height: 240,
                      child: Transform.scale(
                        scale: 1.3,
                        child: Image.asset(
                          widget.item.imageUrl ?? "",
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            )),
            Expanded(
                child: SizedBox(
              width: 1.w(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _animatorWidgetBuilder(
                        child: const RatebarWidget(),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _animatorWidgetBuilder(
                        child: SizedBox(
                          width: 200,
                          child: Text(
                            widget.item.title ?? "",
                            style: typography.bodyText2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      _animatorWidgetBuilder(
                        child: Text(
                          "\$${widget.item.price}",
                          style: typography.h4Title,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }

  double _itemWidth(BuildContext context) =>
      1.w(context) - (getIt<SizeConfig>().padding * 2);
}
