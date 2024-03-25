part of '../featured_products_item_widget.dart';

class _FeaturedProductsItemWidgetWeb extends StatefulWidget {
  const _FeaturedProductsItemWidgetWeb({
    super.key,
    required this.gradients,
    required this.item,
    required this.index,
  });

  final List<LinearGradient> gradients;
  final FeaturedProductsEntity item;
  final int index;

  @override
  State<_FeaturedProductsItemWidgetWeb> createState() =>
      _FeaturedProductsItemWidgetWebState();
}

class _FeaturedProductsItemWidgetWebState
    extends State<_FeaturedProductsItemWidgetWeb> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: InkWell(
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
                      index: widget.index,
                      basemillisecondsDelay: 200,
                      withScale: true,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        height: _containerSize(_isHover, context),
                        width: _containerSize(_isHover, context),
                        decoration: BoxDecoration(
                            gradient:
                                widget.gradients[widget.item.gradientType! - 1],
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  Center(
                      child: _animatorWidgetBuilder(
                    index: widget.index,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: SizedBox(
                          height: 240,
                          child: Image.asset(widget.item.imageUrl ?? "")),
                    ),
                  ))
                ],
              )),
              Expanded(
                  child: SizedBox(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _animatorWidgetBuilder(
                      index: widget.index,
                      child: const RatebarWidget(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    _animatorWidgetBuilder(
                      index: widget.index,
                      child: Text(
                        widget.item.title ?? "",
                        style: typography.bodyText2,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    _animatorWidgetBuilder(
                      index: widget.index,
                      child: Text(
                        "\$${widget.item.price}",
                        style: typography.h4Title,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
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
      (1.w(context) - (getIt<SizeConfig>().padding * 2) - 32) / 4;
}
