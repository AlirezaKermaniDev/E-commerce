part of '../category_item_widget.dart';

class _CategoryItemWidgetWeb extends StatefulWidget {
  const _CategoryItemWidgetWeb({
    super.key,
    required this.title,
    required this.shapePath,
    required this.productsCount,
    required this.imageWidget,
    required this.mainColor,
  });

  final String title;
  final String shapePath;
  final int productsCount;
  final Widget imageWidget;
  final Color mainColor;

  @override
  State<_CategoryItemWidgetWeb> createState() => _CategoryItemWidgetWebState();
}

class _CategoryItemWidgetWebState extends State<_CategoryItemWidgetWeb> {
  EdgeInsets padding = const EdgeInsets.only(left: 40, right: 40, top: 40);
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: _inkWellHoverColor,
      onHover: _onHover,
      child: SizedBox(
        height: 500,
        child: Stack(
          children: [
            _animatorWidgetBuilder(
              child: Container(
                height: 450,
                decoration: _backgroundDecoration,
                child: Padding(
                  padding: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: _animatorWidgetBuilder(
                              child: Text(
                                widget.title,
                                style: typography.h4Title.copyWith(
                                  color: widget.mainColor,
                                ),
                              ),
                            ),
                          ),
                          _animatorWidgetBuilder(
                              millisecondsDelay: 50,
                              child: SvgPicture.asset(widget.shapePath))
                        ],
                      ),
                      _spacer(),
                      _animatorWidgetBuilder(
                        millisecondsDelay: 100,
                        child: Text(
                          "${widget.productsCount} ${context.locale.products}",
                          style: typography.bodyText1.copyWith(
                            color: colorPalette.gray1,
                          ),
                        ),
                      ),
                      _spacer(),
                      _animatorWidgetBuilder(
                        millisecondsDelay: 200,
                        child: Text(
                          context.locale.seeCollection,
                          style: typography.bodyText1.copyWith(
                              color: widget.mainColor,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _animatorWidgetBuilder(
              withScaleTransition: true,
              millisecondsDelay: 700,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 200),
                scale: _isHover ? 1.1 : 1,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: widget.imageWidget,
                ),
              ),
            )
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
}
