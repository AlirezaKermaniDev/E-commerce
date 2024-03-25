part of '../products_list_widget.dart';

class _ProductsListWidgetWeb extends StatelessWidget {
  const _ProductsListWidgetWeb(
      {super.key,
      required this.stickWidgetKey,
      required this.scrollableWidgetKey,
      required this.isStuckTop});

  final GlobalKey stickWidgetKey;
  final GlobalKey scrollableWidgetKey;
  final bool isStuckTop;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatorWidget(
                delay: const Duration(milliseconds: 1000),
                withFadeTransition: true,
                withVisibilityDetector: false,
                child: Visibility(
                  visible: !isStuckTop,
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: filtersBuilder(key: stickWidgetKey),
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              Expanded(
                child: state.isLoading
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
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _gridViewCrossAxisCount(context),
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: .78,
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
              ),
            ],
          ),
        );
      },
    );
  }

  int _gridViewCrossAxisCount(BuildContext context) {
    if (1.w(context) < 950) {
      return 1;
    } else {
      if (1.w(context) < 1400) {
        return 2;
      } else {
        return 3;
      }
    }
  }
}
