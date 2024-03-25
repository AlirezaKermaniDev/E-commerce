part of '../category_item_widget.dart';

class _CategoryItemWidgetPhone extends StatefulWidget {
  const _CategoryItemWidgetPhone({
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
  State<_CategoryItemWidgetPhone> createState() =>
      _CategoryItemWidgetPhoneState();
}

class _CategoryItemWidgetPhoneState extends State<_CategoryItemWidgetPhone> {
  EdgeInsets padding = const EdgeInsets.only(left: 25, right: 25, top: 40);
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: InkWell(
        onTap: () {},
        hoverColor: _inkWellHoverColor,
        onHover: _onHover,
        child: Stack(
          children: [
            _animatorWidgetBuilder(
              child: Container(
                height: 400,
                width: 1.w(context),
                decoration: _backgroundDecoration,
                child: Padding(
                  padding: padding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _animatorWidgetBuilder(
                        child: Text(
                          widget.title,
                          maxLines: 2,
                          style: typography.h5Title.copyWith(
                            color: widget.mainColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                      const SizedBox(
                        height: 16,
                      ),
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
            Positioned(
              top: 250,
              left: 25,
              child: _animatorWidgetBuilder(
                  millisecondsDelay: 300,
                  child: SvgPicture.asset(widget.shapePath)),
            ),
            _animatorWidgetBuilder(
              millisecondsDelay: 400,
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
