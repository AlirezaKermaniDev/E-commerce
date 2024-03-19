part of '../billing_main_widget.dart';

class _BillingMainWidgetPhone extends StatelessWidget {
  const _BillingMainWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BillingBodyWidget(),
          OrderSummeryWidget(
            withContinueButtons: false,
            cartBloc: getIt<CartBloc>()..add(const CartEvent.getProducts()),
          ),
          const SizedBox(
            height: 32,
          ),
          PurchaseActionButtons(
            backButtonText: context.locale.returnToDelivery,
            continueButtonText: context.locale.paySafely,
            onTapContinue: () {},
          ),
        ],
      ),
    );
  }
}
