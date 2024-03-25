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
                  width: .8.w(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _animatorWidgetBuilder(
                        slideOffsetDx: -.1,
                        child: Text(
                          context.locale.newArrivals,
                          style: typography.h4Title
                              .copyWith(color: colorPalette.darkPrimary),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      _animatorWidgetBuilder(
                        slideOffsetDx: -.1,
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
                height: 35,
              ),
              SizedBox(
                height: 620,
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
                        return NewArrialsItemWidget(
                          gradients: _gradients,
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
