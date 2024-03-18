part of '../header_widget.dart';

class _HeaderWidgetTablet extends StatelessWidget {
  const _HeaderWidgetTablet(
      {super.key,
      required this.selectedIndex,
      required this.backgroundColor,
      this.forgroundColor});

  final int selectedIndex;
  final Color backgroundColor;
  final Color? forgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: getIt<SizeConfig>().padding,
          right: getIt<SizeConfig>().padding,
          top: 32,
        ),
        child: SizedBox(
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              CustomIcons.menu,
                              color: forgroundColor ?? colorPalette.darkPrimary,
                            )),
                      ),
                      BlocBuilder<HeaderBloc, HeaderState>(
                        builder: (context, state) {
                          if (state.addedToCartProductsCount == 0) {
                            return const SizedBox();
                          }
                          return Positioned(
                            left: 0,
                            bottom: 8,
                            child: WidgetAnimator(
                              incomingEffect:
                                  WidgetTransitionEffects.incomingScaleUp(),
                              atRestEffect:
                                  WidgetRestingEffects.wave(effectStrength: .2),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: colorPalette.accent4,
                                    shape: BoxShape.circle),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: 50, width: 50, child: Image.asset(AssetHandler.logo)),
            ],
          ),
        ),
      ),
    );
  }
}
