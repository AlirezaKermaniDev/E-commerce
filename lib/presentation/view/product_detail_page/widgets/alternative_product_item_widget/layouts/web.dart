part of '../alternative_product_item_widget.dart';

class _AlternativeProductItemWidgetWeb extends StatefulWidget {
  const _AlternativeProductItemWidgetWeb({
    super.key,
    required this.item,
    required this.index,
  });

  final ProductEntity item;
  final int index;

  @override
  State<_AlternativeProductItemWidgetWeb> createState() =>
      _AlternativeProductItemWidgetWebState();
}

class _AlternativeProductItemWidgetWebState
    extends State<_AlternativeProductItemWidgetWeb> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: InkWell(
        onTap: () {
          context.go("${ProductDetailPage.path}/${widget.item.id}");
        },
        onHover: _onHover,
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          width: _isHover ? 450 : 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: AnimatorWidget(
                    withFadeTransition: true,
                    delay: Duration(milliseconds: widget.index * 100),
                    slideTransition: Tween<Offset>(
                        begin: const Offset(0, .1), end: Offset.zero),
                    child: ProductImageViewerWidget(
                      imageUrl: widget.item.imageUrl ?? "",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: Duration(milliseconds: 100 + (widget.index * 100)),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
                child: Text(
                  widget.item.categories?.last ?? "",
                  style:
                      typography.bodyText1.copyWith(color: colorPalette.gray2),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: Duration(milliseconds: 200 + (widget.index * 100)),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
                child: Text(
                  widget.item.title ?? "",
                  style: typography.bodyText3,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: Duration(milliseconds: 300 + (widget.index * 100)),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
                child: Text(
                  "\$${widget.item.price}",
                  style: typography.h5Title,
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
