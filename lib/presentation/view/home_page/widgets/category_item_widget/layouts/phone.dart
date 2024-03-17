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
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.w(context),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            _isHover = value;
          });
        },
        child: Stack(
          children: [
            AnimatorWidget(
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .2), end: Offset.zero),
              withFadeTransition: true,
              child: Container(
                height: 400,
                width: 1.w(context),
                decoration: BoxDecoration(
                    color: colorPalette.gray6,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatorWidget(
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .2), end: Offset.zero),
                        withFadeTransition: true,
                        child: Text(
                          widget.title,
                          maxLines: 2,
                          style: typography.h5Title.copyWith(
                            color: widget.mainColor,
                          ),
                        ),
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
                        delay: const Duration(milliseconds: 600),
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
            Positioned(
              top: 250,
              left: 25,
              child: AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(.2, 0), end: Offset.zero),
                  delay: const Duration(milliseconds: 50),
                  withFadeTransition: true,
                  child: SvgPicture.asset(widget.shapePath)),
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
