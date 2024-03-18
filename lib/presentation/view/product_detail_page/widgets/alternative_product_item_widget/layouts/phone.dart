part of '../alternative_product_item_widget.dart';

class _AlternativeProductItemWidgetPhone extends StatefulWidget {
  const _AlternativeProductItemWidgetPhone({
    super.key,
    required this.item,
    required this.index,
  });

  final ProductEntity item;
  final int index;

  @override
  State<_AlternativeProductItemWidgetPhone> createState() =>
      _AlternativeProductItemWidgetPhoneState();
}

class _AlternativeProductItemWidgetPhoneState
    extends State<_AlternativeProductItemWidgetPhone> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: InkWell(
        onTap: () {
          context.go("${ProductDetailPage.path}/${widget.item.id}");
        },
        onHover: _onHover,
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          width: _isHover ? 450 : 350,
          height: 550,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: AnimatorWidget(
                    withFadeTransition: true,
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .06), end: Offset.zero),
                    child: ProductImageViewerWidget(
                      imageUrl: widget.item.imageUrl ?? "",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatorWidget(
                          withFadeTransition: true,
                          delay: const Duration(milliseconds: 100),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .3), end: Offset.zero),
                          child: Text(
                            widget.item.categories?.last ?? "",
                            style: typography.bodyText2
                                .copyWith(color: colorPalette.gray2),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        AnimatorWidget(
                          withFadeTransition: true,
                          delay: const Duration(milliseconds: 200),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .3), end: Offset.zero),
                          child: Text(
                            widget.item.title ?? "",
                            style: typography.bodyText1,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 300),
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .3), end: Offset.zero),
                      child: Text(
                        "\$${widget.item.price}",
                        style: typography.bodyText5,
                      ),
                    ),
                  ],
                ),
              ),
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
}
