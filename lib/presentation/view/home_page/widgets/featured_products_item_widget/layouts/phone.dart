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
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: SizedBox(
        width: 1.w(context) - (getIt<SizeConfig>().padding * 2),
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Center(
                  child: AnimatorWidget(
                    withFadeTransition: true,
                    scaleTransition: Tween<double>(begin: .9, end: 1),
                    delay: const Duration(milliseconds: 200),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      height: _isHover ? 180 : 150,
                      width: _isHover ? 180 : 150,
                      decoration: BoxDecoration(
                        gradient:
                            widget.gradients[widget.item.gradientType! - 1],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Center(
                    child: AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1), end: Offset.zero),
                  delay: const Duration(milliseconds: 100),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: SizedBox(
                        height: 240,
                        child: Transform.scale(
                            scale: 1.3,
                            child: Image.asset(widget.item.imageUrl ?? ""))),
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
                      AnimatorWidget(
                          withFadeTransition: true,
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .1), end: Offset.zero),
                          delay: const Duration(milliseconds: 100),
                          child: const RatebarWidget()),
                      const SizedBox(
                        height: 20,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        delay: const Duration(milliseconds: 100),
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
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        delay: const Duration(milliseconds: 100),
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
}
