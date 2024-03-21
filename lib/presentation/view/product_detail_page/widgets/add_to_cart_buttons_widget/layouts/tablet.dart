part of '../add_to_cart_buttons_widget.dart';

class _AddToCartButtonsWidgetTablet extends StatelessWidget {
  const _AddToCartButtonsWidgetTablet({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 2100),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
              child: Row(
                children: [
                  ProductCountButtonWidget(
                    icon: Icons.remove_rounded,
                    isDeactive: state.addCount <= 1,
                    height: 60,
                    width: 50,
                    onTap: () {
                      context
                          .read<ProductDetailBloc>()
                          .add(const ProductDetailEvent.decreaseCount());
                    },
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: colorPalette.gray6, width: 1.5)),
                    child: Center(
                      child: Text(
                        "${state.addCount}",
                        style: typography.bodyText1,
                      ),
                    ),
                  ),
                  ProductCountButtonWidget(
                    icon: Icons.add_rounded,
                    height: 60,
                    width: 50,
                    onTap: () {
                      context
                          .read<ProductDetailBloc>()
                          .add(const ProductDetailEvent.increaseCount());
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            Expanded(
              child: AddToCartButtonWidget(item: item),
            ),
          ],
        );
      },
    );
  }
}
