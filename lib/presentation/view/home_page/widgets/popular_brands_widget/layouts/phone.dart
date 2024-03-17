part of '../popular_brands_widget.dart';

class _PopularBrandsWidgetPhone extends StatelessWidget {
  const _PopularBrandsWidgetPhone({
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
                    height: 50,
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
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 1.w(context),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: getIt<SizeConfig>().padding * 2,
                              ),
                              const PopularBrandsItemWidget(
                                iconPath: CustomIcons.nike,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const PopularBrandsItemWidget(
                                iconPath: CustomIcons.newBalance,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const PopularBrandsItemWidget(
                                iconPath: CustomIcons.adidas,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const PopularBrandsItemWidget(
                                iconPath: CustomIcons.puma,
                              ),
                              SizedBox(
                                width: getIt<SizeConfig>().padding * 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
              Positioned(
                left: -120,
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
