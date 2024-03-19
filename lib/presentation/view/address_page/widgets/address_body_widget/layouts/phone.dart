part of '../address_body_widget.dart';

class _AddressBodyWidgetPhone extends StatelessWidget {
  const _AddressBodyWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AddressFormFieldsWidget(),
         
          OrderSummeryWidget(
            withContinueButtons: false,
            cartBloc: getIt<CartBloc>()..add(const CartEvent.getProducts()),
          ),
          const SizedBox(
            height: 32,
          ),
          if (context.isPhone)
            PurchaseActionButtons(
              backButtonText: context.locale.returnToCart,
              continueButtonText: context.locale.proceedToDelivery,
              onTapContinue: () {
                context.push(DeliveryPage.path);
              },
            ),
        ],
      ),
    );
  }
}
