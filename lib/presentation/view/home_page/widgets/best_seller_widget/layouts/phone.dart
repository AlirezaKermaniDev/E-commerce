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
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getIt<SizeConfig>().padding,
            ),
            child: AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
                padding:  EdgeInsets.only(top: .1.w(context)),
                child: Row(
                  children: [
                    AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 200),
                      slideTransition: Tween<Offset>(
                          begin: Offset(context.isLtrLocale ? -.9 : .9, 0),
                          end: Offset.zero),
                      child: Container(
                        height: .46.w(context),
                        width: .5.w(context),
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
              ),
              SizedBox(
                width: 1.w(context),
                child: Transform.scale(
                    scale: 1,
                    child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(
                          context.isLtrLocale ? math.pi : 0,
                        ),
                        child: AnimatorWidget(
                            withFadeTransition: true,
                            slideTransition: Tween<Offset>(
                              begin: Offset(context.isLtrLocale ? -.9 : .9, 0),
                              end: Offset.zero,
                            ),
                            child: WidgetAnimator(
                                atRestEffect: WidgetRestingEffects.wave(),
                                child: Image.asset(AssetHandler.shoe1))))),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatorWidget(
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 350),
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1), end: Offset.zero),
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
                child: AnimatorWidget(
                  withFadeTransition: true,
                  delay: const Duration(milliseconds: 300),
                  slideTransition: Tween<Offset>(
                      begin: const Offset(0, .1), end: Offset.zero),
                  child: Text(
                    "Adidas Falcon Shoes for women - 2021 Edition",
                    style: typography.bodyText3
                        .copyWith(color: colorPalette.darkPrimary),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 400),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: ButtonWidget(
                  title: context.locale.shopNow,
                  color: colorPalette.accent1,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
