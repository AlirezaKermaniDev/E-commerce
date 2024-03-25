part of '../new_arrials_item_widget.dart';

class _NewArrialsItemWidgetWeb extends StatefulWidget {
  const _NewArrialsItemWidgetWeb(
      {super.key,
      required this.gradients,
      required this.item,
      required this.index});

  final List<LinearGradient> gradients;
  final FeaturedProductsEntity item;
  final int index;

  @override
  State<_NewArrialsItemWidgetWeb> createState() =>
      _NewArrialsItemWidgetWebState();
}

class _NewArrialsItemWidgetWebState extends State<_NewArrialsItemWidgetWeb> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: _inkWellHoverColor,
      onTap: () {},
      onHover: _onHover,
      child: SizedBox(
        width: 300,
        child: Stack(children: [
          Align(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                _animatorWidgetBuilder(
                  millisecondsDelay: 0,
                  index: widget.index,
                  scaleTrasition: true,
                  child: Container(
                    height: 360,
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        gradient: widget
                            .gradients[(widget.item.gradientType ?? 0) % 4]),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(
                                  "0${widget.index + 1}",
                                  style: typography.h2Title
                                      .copyWith(color: colorPalette.primary),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: 28,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: colorPalette.primary,
                                      borderRadius: BorderRadius.circular(32)),
                                  child: Center(
                                    child: Icon(
                                      Icons.add_rounded,
                                      color: colorPalette.darkPrimary,
                                      size: 22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      _animatorWidgetBuilder(
                          millisecondsDelay: 50,
                          index: widget.index,
                          child: const RatebarWidget()),
                      const SizedBox(
                        height: 16,
                      ),
                      _animatorWidgetBuilder(
                        millisecondsDelay: 100,
                        index: widget.index,
                        child: Text(
                          widget.item.title ?? "",
                          style: typography.bodyText1
                              .copyWith(color: colorPalette.darkPrimary),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      _animatorWidgetBuilder(
                        millisecondsDelay: 150,
                        index: widget.index,
                        child: Text(
                          "\$${widget.item.price}",
                          style: typography.h4Title
                              .copyWith(color: colorPalette.darkPrimary),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          AnimatedPadding(
            duration: _animationPaddingDuration,
            padding: EdgeInsets.only(top: _isHover ? 80 : 110, right: 80),
            curve: Curves.easeIn,
            child: _animatorWidgetBuilder(
              millisecondsDelay: 0,
              index: widget.index,
              rotateTrasition: true,
              child: Transform.scale(
                scale: 1.8,
                child: Transform.rotate(
                    angle: -.5, child: Image.asset(widget.item.imageUrl ?? "")),
              ),
            ),
          )
        ]),
      ),
    );
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }
}
