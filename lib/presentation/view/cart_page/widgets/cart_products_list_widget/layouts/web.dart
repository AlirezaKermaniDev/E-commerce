part of '../cart_products_list_widget.dart';

class _CartProductsListWidgetWeb extends StatelessWidget {
  const _CartProductsListWidgetWeb({
    super.key,
    required this.listViewKey,
  });
  final GlobalKey<State<StatefulWidget>>? listViewKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatorTextWidget(
              context.locale.shoppingCart,
              style: typography.h4Title,
              initialDelay: const Duration(milliseconds: 200),
              spaceDelay: Duration.zero,
              incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                  blur: const Offset(0, 20),
                  duration: const Duration(milliseconds: 170)),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatorTextWidget(
              "${context.locale.total}: ${state.products.length} ${context.locale.items}",
              style: typography.bodyText2.copyWith(color: colorPalette.gray2),
              initialDelay: const Duration(milliseconds: 300),
            ),
            const SizedBox(
              height: 60,
            ),
            if (state.products.isEmpty)
              SizedBox(
                height: .5.h(context),
                width: 1.w(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 400),
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .05), end: Offset.zero),
                      child: SizedBox(
                          height: .35.h(context),
                          width: .35.h(context),
                          child: Image.asset(AssetHandler.emptyCart)),
                    ),
                  ],
                ),
              ),
            ListView.builder(
                key: listViewKey,
                itemCount: state.products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = state.products[index];
                  return CartProductsItemWidget(
                    item: item,
                    index: index,
                  );
                })
          ],
        );
      },
    );
  }
}
