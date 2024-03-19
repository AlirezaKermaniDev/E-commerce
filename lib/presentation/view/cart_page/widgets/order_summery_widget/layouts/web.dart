part of '../order_summery_widget.dart';

class _OrderSummeryWidgetWeb extends StatelessWidget {
  const _OrderSummeryWidgetWeb(
      {super.key, this.withContinueButtons = true, required this.cartBloc});
  final bool withContinueButtons;
  final CartBloc cartBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cartBloc,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Container(
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: colorPalette.gray5, width: 2)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.locale.orderSummary,
                    style: typography.h4Title,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  OrderSummeryCostsItemWidget(
                    title: context.locale.totalProducts,
                    value: "\$${state.totalProductsPrice ?? 0}",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OrderSummeryCostsItemWidget(
                    title: context.locale.shippingCosts,
                    value: "\$25",
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const PromoCodeWidget(),
                  const SizedBox(
                    height: 50,
                  ),
                  Divider(
                    color: colorPalette.gray5,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  OrderSummeryCostsItemWidget(
                    title: context.locale.shipment,
                    value: "\$25",
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OrderSummeryCostsItemWidget(
                    title: context.locale.appliedPromoCode,
                    value: "-\$15",
                    valueColor: colorPalette.accent4,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  OrderSummeryCostsItemWidget(
                    title: context.locale.total,
                    value: state.totalProductsPrice == null
                        ? "\$0"
                        : "\$${(state.totalProductsPrice ?? 0) + 10}",
                    boldValue: true,
                  ),
                  if (withContinueButtons) _continueButtonsWidget(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Column _continueButtonsWidget(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        CartActionButtonWidget(
          onTap: () {
            context.push(AddressPage.path);
          },
          title: context.locale.proceedToCheckout,
          backgroundColor: colorPalette.darkPrimary,
        ),
        const SizedBox(
          height: 16,
        ),
        CartActionButtonWidget(
          onTap: () {
            context.push(AddressPage.path);
          },
          title: context.locale.memberCheckout,
          backgroundColor: colorPalette.primary,
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Text(context.locale.acceptedPaymentMethods,
                style: typography.bodyText2),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const AvailablePaymentMethodsWidget(),
      ],
    );
  }
}
