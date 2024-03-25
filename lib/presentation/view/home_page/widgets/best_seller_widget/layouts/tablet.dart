part of '../best_seller_widget.dart';

class _BestSellerWidgetTablet extends StatelessWidget {
  const _BestSellerWidgetTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Column(
        children: [
          spacerWidget(false),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _animatorWidgetBuilder(
                  child: Text(
                    context.locale.bestSellerThisWeek,
                    style: typography.h2Title
                        .copyWith(color: colorPalette.darkPrimary),
                  ),
                ),
                _animatorWidgetBuilder(
                  child: ArrowTitleButtonWidget(
                    title: context.locale.viewAll,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Stack(
            children: [
              Row(
                children: [
                  _animatorWidgetBuilder(
                    millisecondDelay: 200,
                    slideBeginOffset: _sliderBeginOffset(context.isLtrLocale),
                    child: Container(
                      height: 360,
                      width: .3.w(context),
                      decoration: _backgroundShapeBoxDecoration(context),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getIt<SizeConfig>().padding,
                  vertical: 20,
                ),
                child: SizedBox(
                  width: 460,
                  child: Transform.scale(
                    scale: 1.3,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(
                        _rotationRadius(context.isLtrLocale),
                      ),
                      child: _animatorWidgetBuilder(
                        withVisibilityDetector: true,
                        slideBeginOffset:
                            _sliderBeginOffset(context.isLtrLocale),
                        child: WidgetAnimator(
                          atRestEffect: WidgetRestingEffects.wave(),
                          child: Image.asset(AssetHandler.shoe1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: _bestSellerDetailAlignment(context.isLtrLocale),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: context.isLtrLocale ? 0 : .7.w(context),
                    left: context.isLtrLocale ? .7.w(context) : 0,
                  ),
                  child: SizedBox(
                    width: .19.w(context),
                    height: 360,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _animatorWidgetBuilder(
                          millisecondDelay: 250,
                          child: Text(
                            _title,
                            style: typography.h5Title
                                .copyWith(color: colorPalette.darkPrimary),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        _animatorWidgetBuilder(
                            millisecondDelay: 300,
                            child: const RatebarWidget()),
                        const SizedBox(
                          height: 16,
                        ),
                        _animatorWidgetBuilder(
                          millisecondDelay: 350,
                          child: Text(
                            _price,
                            style: typography.h5Title
                                .copyWith(color: colorPalette.darkPrimary),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        _animatorWidgetBuilder(
                          millisecondDelay: 400,
                          child: ButtonWidget(
                            title: context.locale.shopNow,
                            color: colorPalette.accent1,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          spacerWidget(false),
        ],
      ),
    );
  }
}
