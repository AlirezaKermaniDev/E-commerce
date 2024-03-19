part of '../delivery_body_widget.dart';

class _DeliveryBodyWidgetPhone extends StatelessWidget {
  const _DeliveryBodyWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DeliveryFormWidget(),
          OrderSummeryWidget(
            withContinueButtons: false,
            cartBloc: getIt<CartBloc>()..add(const CartEvent.getProducts()),
          ),
          const SizedBox(
            height: 32,
          ),
          if (context.isPhone)
            PurchaseActionButtons(
              backButtonText: context.locale.returnToAddress,
              continueButtonText: context.locale.proceedToBilling,
              onTapContinue: () {
                context.push(BillingPage.path);
              },
            ),
        ],
      ),
    );
  }
}
