part of '../products_list_widget.dart';

class _ProductsListWidgetPhone extends StatelessWidget {
  const _ProductsListWidgetPhone(
      {super.key,
      required this.stickWidgetKey,
      required this.scrollableWidgetKey});

  final GlobalKey stickWidgetKey;
  final GlobalKey scrollableWidgetKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatorWidget(
                delay: const Duration(milliseconds: 1000),
                withFadeTransition: true,
                withVisibilityDetector: false,
                child: filtersBuilder(key: stickWidgetKey),
              ),
              const SizedBox(
                height: 32,
              ),
              state.isLoading
                  ? Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 0.25.h(context)),
                        child: CircularProgressIndicator.adaptive(
                          backgroundColor: colorPalette.accent4,
                        ),
                      ),
                    )
                  : GridView.builder(
                      key: scrollableWidgetKey,
                      itemCount: state.products.length,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(bottom: 50),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: .6,
                      ),
                      itemBuilder: ((context, index) {
                        return AnimatorWidget(
                          withFadeTransition: true,
                          withVisibilityDetector: false,
                          slideTransition: Tween<Offset>(
                              begin: const Offset(0, .1), end: Offset.zero),
                          delay: Duration(
                            milliseconds: 100 + (index * 100),
                          ),
                          child: ProductItemWidget(
                            item: state.products[index],
                          ),
                        );
                      }),
                    ),
            ],
          ),
        );
      },
    );
  }
}
