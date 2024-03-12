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
        hoverColor: Colors.transparent,
        onTap: () {},
        onHover: (value) {
          setState(() {
            _isHover = value;
          });
        },
        child: SizedBox(
          width: (1.w(context) - (getIt<SizeConfig>().padding * 2) - 32) / 4,
          child: Column(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Center(
                    child: AnimatorWidget(
                      withFadeTransition: true,
                      scaleTransition: Tween<double>(begin: .9, end: 1),
                      delay: Duration(milliseconds: ((widget.index % 4) * 200)),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        height: _isHover ? 150 : 116,
                        width: _isHover ? 150 : 116,
                        decoration: BoxDecoration(
                            gradient:
                                widget.gradients[widget.item.gradientType! - 1],
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  Center(
                      child: AnimatorWidget(
                    withFadeTransition: true,
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1), end: Offset.zero),
                    delay: Duration(milliseconds: ((widget.index % 4) * 100)),
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
                    AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        delay:
                            Duration(milliseconds: ((widget.index % 4) * 100)),
                        child: const RatebarWidget()),
                    const SizedBox(
                      height: 16,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .1), end: Offset.zero),
                      delay: Duration(milliseconds: ((widget.index % 4) * 100)),
                      child: Text(
                        widget.item.title ?? "",
                        style: typography.bodyText2,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .1), end: Offset.zero),
                      delay: Duration(milliseconds: ((widget.index % 4) * 100)),
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
}
