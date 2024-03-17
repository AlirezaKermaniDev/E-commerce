part of '../best_seller_widget.dart';

class _BestSellerWidgetWeb extends StatelessWidget {
  const _BestSellerWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatorWidget(
                  withFadeTransition: true,
                  slideTransition: Tween<Offset>(
                      begin: const Offset(-.1, 0), end: Offset.zero),
                  child: Text(
                    context.locale.bestSellerThisWeek,
                    style: typography.h2Title
                        .copyWith(color: colorPalette.darkPrimary),
                  ),
                ),
                AnimatorWidget(
                  slideTransition: Tween<Offset>(
                      begin: const Offset(.1, 0), end: Offset.zero),
                  withFadeTransition: true,
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
                  AnimatorWidget(
                    withFadeTransition: true,
                    delay: const Duration(milliseconds: 200),
                    slideTransition: Tween<Offset>(
                        begin: Offset(context.isLtrLocale ? -.9 : .9, 0),
                        end: Offset.zero),
                    child: Container(
                      height: 460,
                      width: .3.w(context),
                      decoration: BoxDecoration(
                        gradient: colorPalette.gradient4,
                        borderRadius: 1.w(context) == 2000
                            ? BorderRadius.circular(30)
                            : BorderRadius.only(
                                topRight: context.isLtrLocale
                                    ? const Radius.circular(30)
                                    : Radius.zero,
                                bottomRight: context.isLtrLocale
                                    ? const Radius.circular(30)
                                    : Radius.zero,
                                topLeft: context.isLtrLocale
                                    ? Radius.zero
                                    : const Radius.circular(30),
                                bottomLeft: context.isLtrLocale
                                    ? Radius.zero
                                    : const Radius.circular(30),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding, vertical: 20),
                child: SizedBox(
                  width: 620,
                  child: Transform.scale(
                      scale: 1.4,
                      child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(
                            context.isLtrLocale ? math.pi : 0,
                          ),
                          child: AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                begin:
                                    Offset(context.isLtrLocale ? -.9 : .9, 0),
                                end: Offset.zero,
                              ),
                              child: WidgetAnimator(
                                  atRestEffect: WidgetRestingEffects.wave(),
                                  child: Image.asset(AssetHandler.shoe1))))),
                ),
              ),
              Align(
                alignment: context.isLtrLocale
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: context.isLtrLocale ? 0 : .65.w(context),
                    left: context.isLtrLocale ? .65.w(context) : 0,
                  ),
                  child: SizedBox(
                    width: .19.w(context),
                    height: 460,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatorWidget(
                          withFadeTransition: true,
                          delay: const Duration(milliseconds: 300),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .1), end: Offset.zero),
                          child: Text(
                            "Adidas Falcon Shoes for women - 2021 Edition",
                            style: typography.h5Title
                                .copyWith(color: colorPalette.darkPrimary),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        AnimatorWidget(
                            withFadeTransition: true,
                            delay: const Duration(milliseconds: 350),
                            slideTransition: Tween<Offset>(
                                begin: const Offset(0, .1), end: Offset.zero),
                            child: const RatebarWidget()),
                        const SizedBox(
                          height: 16,
                        ),
                        AnimatorWidget(
                          withFadeTransition: true,
                          delay: const Duration(milliseconds: 400),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .1), end: Offset.zero),
                          child: Text(
                            "\$120.50",
                            style: typography.h5Title
                                .copyWith(color: colorPalette.darkPrimary),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        AnimatorWidget(
                          withFadeTransition: true,
                          delay: const Duration(milliseconds: 350),
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .1), end: Offset.zero),
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
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
