part of '../new_arrivals_widget.dart';

class _NewArrivalsWidgetPhone extends StatelessWidget {
  _NewArrivalsWidgetPhone({
    super.key,
  });

  final PageController scrollController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          width: double.infinity,
          color: colorPalette.gray6,
        ),
        ConstraintsWidget(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: SizedBox(
                  width: .5.w(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(-.1, 0), end: Offset.zero),
                        child: Text(
                          context.locale.newArrivals,
                          style: typography.h2Title
                              .copyWith(color: colorPalette.darkPrimary),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AnimatorWidget(
                        withFadeTransition: true,
                        slideTransition: Tween<Offset>(
                            begin: const Offset(-.1, 0), end: Offset.zero),
                        child: Text(
                          context.locale.enjoyTheNewProductsFromOurStore,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 1.w(context),
                width: 1.w(context),
                child: ScrollbarWidget(
                  scrollController: scrollController,
                  padding: EdgeInsets.only(
                    left: 0.2.w(context),
                    right: 0.2.w(context),
                  ),
                  child: PageView.builder(
                      itemCount: featuredProductsEntities.length,
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = featuredProductsEntities[index];
                        List<LinearGradient> gradients = [
                          colorPalette.gradient4,
                          colorPalette.gradient3,
                          colorPalette.gradient1,
                          colorPalette.gradient2,
                        ];
                        return NewArrialsItemWidget(
                          gradients: gradients,
                          item: item,
                          index: index,
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
