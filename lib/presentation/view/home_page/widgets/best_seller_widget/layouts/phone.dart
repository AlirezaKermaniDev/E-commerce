part of '../best_seller_widget.dart';

class _BestSellerWidgetPhone extends StatelessWidget {
  const _BestSellerWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          spacerWidget(true),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getIt<SizeConfig>().padding,
            ),
            child: _animatorWidgetBuilder(
              child: Text(
                context.locale.bestSellerThisWeek,
                style: typography.h4Title
                    .copyWith(color: colorPalette.darkPrimary),
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: .1.w(context)),
                child: Row(
                  children: [
                    _animatorWidgetBuilder(
                      millisecondDelay: 200,
                      slideBeginOffset: _sliderBeginOffset(context.isLtrLocale),
                      child: Container(
                        height: .46.w(context),
                        width: .5.w(context),
                        decoration: _backgroundShapeBoxDecoration(context),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1.w(context),
                child: Transform(
                  alignment: Alignment.center,
                  transform:
                      Matrix4.rotationY(_rotationRadius(context.isLtrLocale)),
                  child: _animatorWidgetBuilder(
                    slideBeginOffset: _sliderBeginOffset(context.isLtrLocale),
                    child: WidgetAnimator(
                      atRestEffect: WidgetRestingEffects.wave(),
                      child: Image.asset(AssetHandler.shoe1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _animatorWidgetBuilder(
                  millisecondDelay: 250,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RatebarWidget(),
                    ],
                  )),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: .7.w(context),
                child: _animatorWidgetBuilder(
                  millisecondDelay: 300,
                  child: Text(
                    _title,
                    style: typography.bodyText3
                        .copyWith(color: colorPalette.darkPrimary),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
          spacerWidget(true),
        ],
      ),
    );
  }
}
