part of '../category_item_widget.dart';

class _CategoryItemWidgetTablet extends StatefulWidget {
  const _CategoryItemWidgetTablet({
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
  State<_CategoryItemWidgetTablet> createState() =>
      _CategoryItemWidgetTabletState();
}

class _CategoryItemWidgetTabletState extends State<_CategoryItemWidgetTablet> {
  EdgeInsets padding = const EdgeInsets.only(left: 25, right: 25, top: 25);
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: _inkWellHoverColor,
      onHover: _onHover,
      child: SizedBox(
        height: 400,
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
                            flex: 11,
                            child: _animatorWidgetBuilder(
                              child: FittedBox(
                                child: Text(
                                  widget.title.replaceAll(" ", "\n"),
                                  maxLines: 2,
                                  style: typography.h5Title.copyWith(
                                    color: widget.mainColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: .03.w(context),
                          ),
                          Expanded(
                            flex: 5,
                            child: _animatorWidgetBuilder(
                                millisecondsDelay: 50,
                                child: SvgPicture.asset(widget.shapePath)),
                          )
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
              millisecondsDelay: 700,
              withScaleTransition: true,
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
