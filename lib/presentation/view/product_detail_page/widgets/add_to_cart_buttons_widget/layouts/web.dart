part of '../add_to_cart_buttons_widget.dart';

class _AddToCartButtonsWidgetWeb extends StatelessWidget {
  const _AddToCartButtonsWidgetWeb({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        return Row(
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
                    onTap: () {
                      context
                          .read<ProductDetailBloc>()
                          .add(const ProductDetailEvent.decreaseCount());
                    },
                  ),
                  Container(
                    height: 70,
                    width: 70,
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
