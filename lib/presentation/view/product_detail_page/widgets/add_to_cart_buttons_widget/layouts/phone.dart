part of '../add_to_cart_buttons_widget.dart';

class _AddToCartButtonsWidgetPhone extends StatelessWidget {
  const _AddToCartButtonsWidgetPhone({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _animatorWidgetBuilder(
              child: Row(
                children: [
                  ProductCountButtonWidget(
                    icon: Icons.remove_rounded,
                    height: 50,
                    width: 50,
                    isDeactive: state.addCount <= 1,
                    onTap: () => onRemoveCountTap(context),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: colorPalette.gray6, width: 1.5)),
                    child: Center(
                      child: Text(
                        "${state.addCount}",
                        style: typography.bodyText2,
                      ),
                    ),
                  ),
                  ProductCountButtonWidget(
                    icon: Icons.add_rounded,
                    height: 50,
                    width: 50,
                    onTap: () => onAddCountTap(context),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
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
