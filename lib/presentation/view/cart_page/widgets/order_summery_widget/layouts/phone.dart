part of '../order_summery_widget.dart';

class _OrderSummeryWidgetPhone extends StatelessWidget {
  const _OrderSummeryWidgetPhone(
      {super.key, this.withContinueBttons = true, required this.cartBloc});
  final bool withContinueBttons;
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
                  height: 16,
                ),
                Text(
                  context.locale.orderSummary,
                  style: typography.h5Title,
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
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 56,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: colorPalette.gray6, width: 1.5)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Text(
                                  context.locale.promoCode,
                                  style: typography.bodyText4.copyWith(
                                      color: colorPalette.gray2, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                        child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: colorPalette.darkPrimary,
                      ),
                      child: Center(
                        child: Text(
                          context.locale.apply,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.primary),
                        ),
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Divider(
                  color: colorPalette.gray5,
                  height: 1,
                ),
                const SizedBox(
                  height: 25,
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
                if (withContinueBttons)
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          context.push(AddressPage.path);
                        },
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: colorPalette.darkPrimary,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(context.locale.proceedToCheckout,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.primary)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: colorPalette.darkPrimary),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(context.locale.memberCheckout,
                              style: typography.bodyText2),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(context.locale.acceptedPaymentMethods,
                          style: typography.bodyText2),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            CustomIcons.paypalLogo,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            CustomIcons.visaLogo,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(
                            CustomIcons.klarnaLogo,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
