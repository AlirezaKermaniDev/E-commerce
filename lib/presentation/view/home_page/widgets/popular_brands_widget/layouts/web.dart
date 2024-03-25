part of '../popular_brands_widget.dart';

class _PopularBrandsWidgetWeb extends StatelessWidget {
  const _PopularBrandsWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: colorPalette.gray6,
        width: double.infinity,
        child: ConstraintsWidget(
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(0, .1), end: Offset.zero),
                        child: Text(
                          context.locale.popularBrands,
                          style: typography.h2Title.copyWith(
                            color: colorPalette.darkPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(-.6, 0), end: Offset.zero),
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                          color: colorPalette.gray3,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      SizedBox(
                        width: .8.w(context),
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PopularBrandsItemWidget(
                                iconPath: CustomIcons.nike,
                              ),
                              _widthSpacer,
                              PopularBrandsItemWidget(
                                iconPath: CustomIcons.newBalance,
                              ),
                              _widthSpacer,
                              PopularBrandsItemWidget(
                                iconPath: CustomIcons.adidas,
                              ),
                              _widthSpacer,
                              PopularBrandsItemWidget(
                                iconPath: CustomIcons.puma,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.6, 0), end: Offset.zero),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                          color: colorPalette.gray3,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
              Positioned(
                left: 0,
                top: -130,
                child: Container(
                  height: 255,
                  width: 255,
                  decoration: BoxDecoration(
                      gradient: colorPalette.gradient3, shape: BoxShape.circle),
                ),
              )
            ],
          ),
        ));
  }
}
