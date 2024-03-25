part of '../add_to_cart_buttons_widget.dart';

class _AddToCartButtonsWidgetWeb extends StatelessWidget {
  const _AddToCartButtonsWidgetWeb({super.key, required this.item});

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
                    isDeactive: state.addCount <= 1,
                    onTap: () => onRemoveCountTap(context),
                  ),
                  Container(
                    height: 70,
                    width: 60,
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
                    onTap: () => onAddCountTap(context),
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
