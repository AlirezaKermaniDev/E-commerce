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
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            AnimatorWidget(
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
              withFadeTransition: true,
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                    color: colorPalette.gray6,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 11,
                            child: AnimatorWidget(
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .2), end: Offset.zero),
                              withFadeTransition: true,
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
                            child: AnimatorWidget(
                                slideTransition: Tween<Offset>(
                                    begin: const Offset(.2, 0),
                                    end: Offset.zero),
                                delay: const Duration(milliseconds: 50),
                                withFadeTransition: true,
                                child: SvgPicture.asset(widget.shapePath)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      AnimatorWidget(
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .2), end: Offset.zero),
                        delay: const Duration(milliseconds: 100),
                        withFadeTransition: true,
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
                      AnimatorWidget(
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .2), end: Offset.zero),
                        delay: const Duration(milliseconds: 200),
                        withFadeTransition: true,
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
            AnimatorWidget(
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
              scaleTransition: Tween<double>(begin: .9, end: 1),
              delay: const Duration(milliseconds: 700),
              withFadeTransition: true,
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
}
