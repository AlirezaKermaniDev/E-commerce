part of '../order_summery_widget.dart';

class _OrderSummeryWidgetWeb extends StatelessWidget {
  const _OrderSummeryWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              value: "\$180",
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
              value: "\$140",
              boldValue: true,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 65,
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
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 65,
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
              height: 50,
            ),
            Text(context.locale.acceptedPaymentMethods,
                style: typography.bodyText2),
            const SizedBox(
              height: 16,
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}