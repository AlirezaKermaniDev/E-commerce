part of '../order_summery_widget.dart';

class _OrderSummeryWidgetPhone extends StatelessWidget {
  const _OrderSummeryWidgetPhone(
      {super.key, this.withContinueButtons = true, required this.cartBloc});
  final bool withContinueButtons;
  final CartBloc cartBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cartBloc,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return SizedBox(
            width: 1.w(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 100,
                  child: Text(
                    context.locale.orderSummary,
                    style: typography.h5Title,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 200,
                  child: OrderSummeryCostsItemWidget(
                    title: context.locale.totalProducts,
                    value: "\$${state.totalProductsPrice ?? 0}",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 300,
                  child: OrderSummeryCostsItemWidget(
                    title: context.locale.shippingCosts,
                    value: "\$25",
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  millisecondsDelay: 400,
                  child: const PromoCodeWidget(),
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  child: Divider(
                    color: colorPalette.gray5,
                    height: 1,
                  ),
                  millisecondsDelay: 500,
                ),
                const SizedBox(
                  height: 25,
                ),
                _animatorWidgetBuilder(
                  child: OrderSummeryCostsItemWidget(
                    title: context.locale.shipment,
                    value: "\$25",
                  ),
                  millisecondsDelay: 600,
                ),
                const SizedBox(
                  height: 16,
                ),
                _animatorWidgetBuilder(
                  child: OrderSummeryCostsItemWidget(
                    title: context.locale.appliedPromoCode,
                    value: "-\$15",
                    valueColor: colorPalette.accent4,
                  ),
                  millisecondsDelay: 700,
                ),
                const SizedBox(
                  height: 16,
                ),
                _animatorWidgetBuilder(
                  child: OrderSummeryCostsItemWidget(
                    title: context.locale.total,
                    value: state.totalProductsPrice == null
                        ? "\$0"
                        : "\$${(state.totalProductsPrice ?? 0) + 10}",
                    boldValue: true,
                  ),
                  millisecondsDelay: 800,
                ),
                if (withContinueButtons) _continueButtonsWidget(context),
              ],
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
          height: 25,
        ),
        _animatorWidgetBuilder(
          child: CartActionButtonWidget(
            onTap: () {
              context.push(AddressPage.path);
            },
            title: context.locale.proceedToCheckout,
            backgroundColor: colorPalette.darkPrimary,
          ),
          millisecondsDelay: 900,
        ),
        const SizedBox(
          height: 16,
        ),
        _animatorWidgetBuilder(
          child: CartActionButtonWidget(
            onTap: () {
              context.push(AddressPage.path);
            },
            title: context.locale.memberCheckout,
            backgroundColor: colorPalette.primary,
          ),
          millisecondsDelay: 1000,
        ),
        const SizedBox(
          height: 25,
        ),
        _animatorWidgetBuilder(
          child: Text(context.locale.acceptedPaymentMethods,
              style: typography.bodyText2),
          millisecondsDelay: 1100,
        ),
        const SizedBox(
          height: 16,
        ),
        _animatorWidgetBuilder(
          child: const AvailablePaymentMethodsWidget(),
          millisecondsDelay: 1200,
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }

  Widget _animatorWidgetBuilder(
      {required Widget child, required int millisecondsDelay}) {
    return AnimatorWidget(
      withFadeTransition: true,
      withVisibilityDetector: false,
      delay: Duration(milliseconds: millisecondsDelay),
      slideTransition:
          Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
      child: child,
    );
  }
}
