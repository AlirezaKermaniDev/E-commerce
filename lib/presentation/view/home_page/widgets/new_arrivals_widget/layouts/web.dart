part of '../new_arrivals_widget.dart';

class _NewArrivalsWidgetWeb extends StatelessWidget {
  _NewArrivalsWidgetWeb({
    super.key,
  });

  final ScrollController scrollController = ScrollController();

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
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatorWidget(
                            withFadeTransition: true,
                            slideTransition: Tween<Offset>(
                                begin: const Offset(-.1, 0), end: Offset.zero),
                            child: Text(
                              context.locale.newArrivals,
                              style: typography.h2Title
                                  .copyWith(color: colorPalette.darkPrimary),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: AnimatorWidget(
                        slideTransition: Tween<Offset>(
                            begin: const Offset(.1, 0), end: Offset.zero),
                        withFadeTransition: true,
                        child: ArrowTitleButtonWidget(
                          title: context.locale.viewAll,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 620,
                width: 1.w(context),
                child: ScrollbarWidget(
                  scrollController: scrollController,
                  padding: EdgeInsets.only(
                    left: 0.35.w(context),
                    right: 0.35.w(context),
                  ),
                  child: ListView.builder(
                      itemCount: featuredProductsEntities.length,
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                          left: getIt<SizeConfig>().padding,
                          right: getIt<SizeConfig>().padding,
                          bottom: 20),
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
