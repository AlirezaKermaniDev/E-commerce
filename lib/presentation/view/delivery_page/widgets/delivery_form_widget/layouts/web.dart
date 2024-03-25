part of '../delivery_form_widget.dart';

class _DeliveryFormWidgetWeb extends StatelessWidget {
  const _DeliveryFormWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _animatorWidgetBuilder(
          child: Divider(
            color: colorPalette.gray5,
            thickness: 1.6,
            height: 3,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 100,
          child: const DeliveryUserDetailWidget(),
        ),
        const SizedBox(
          height: 16,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 700,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Checkbox.adaptive(
                  value: false,
                  onChanged: (_) {},
                  activeColor: colorPalette.darkPrimary,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Text(
                  context.locale.pleaseSendMeSmsShippingUpdatesAboutMyOrder,
                  style: typography.bodyText2,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        const SelectDeliveryMethodWidget(),
        const SizedBox(
          height: 35,
        ),
        if (!context.isPhone)
          PurchaseActionButtons(
            backButtonText: context.locale.returnToAddress,
            continueButtonText: context.locale.proceedToBilling,
            onTapContinue: () {
              context.push(BillingPage.path);
            },
          ),
      ],
    );
  }
}
