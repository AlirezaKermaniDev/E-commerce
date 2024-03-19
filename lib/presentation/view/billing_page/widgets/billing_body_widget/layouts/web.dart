part of '../billing_body_widget.dart';

class _BillingBodyWidgetWeb extends StatelessWidget {
  const _BillingBodyWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatorWidget(
          withFadeTransition: true,
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
          child: Divider(
            color: colorPalette.gray5,
            thickness: 1.6,
            height: 3,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const CreditCardFormWidget(),
        SizedBox(
          height: context.isPhone ? 16 : 55,
        ),
        if (!context.isPhone)
          PurchaseActionButtons(
            backButtonText: context.locale.returnToDelivery,
            continueButtonText: context.locale.paySafely,
            onTapContinue: () {},
          ),
      ],
    );
  }
}
