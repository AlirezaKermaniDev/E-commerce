part of '../address_form_fields_widget.dart';

class _AddressFormFieldsWidgetWeb extends StatelessWidget {
  const _AddressFormFieldsWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: TextFieldWidget(
            lable: context.locale.email,
            onChange: (value) {},
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              child: _animatorWidgetBuilder(
                millisecondsDelay: 200,
                child: TextFieldWidget(
                  lable: context.locale.name,
                  onChange: (value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: _animatorWidgetBuilder(
                millisecondsDelay: 300,
                child: TextFieldWidget(
                  lable: context.locale.lastName,
                  onChange: (value) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: _animatorWidgetBuilder(
                millisecondsDelay: 300,
                child: TextFieldWidget(
                  lable: context.locale.address,
                  onChange: (value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: _animatorWidgetBuilder(
                millisecondsDelay: 400,
                child: TextFieldWidget(
                  lable: context.locale.aptUnitEtc,
                  onChange: (value) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 500,
          child: TextFieldWidget(
            lable: "${context.locale.town}/${context.locale.city}",
            onChange: (value) {},
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              child: _animatorWidgetBuilder(
                millisecondsDelay: 600,
                child: TextFieldWidget(
                  lable: context.locale.country,
                  onChange: (value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: _animatorWidgetBuilder(
                millisecondsDelay: 700,
                child: TextFieldWidget(
                  lable: context.locale.zip,
                  onChange: (value) {},
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: _animatorWidgetBuilder(
                millisecondsDelay: 800,
                child: TextFieldWidget(
                  lable: context.locale.state,
                  onChange: (value) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 900,
          child: Row(
            children: [
              SizedBox(
                width: 20,
                child: Checkbox.adaptive(
                  value: false,
                  onChanged: (_) {},
                  activeColor: colorPalette.darkPrimary,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                context.locale.saveInformationForDelivery,
                style: typography.bodyText2,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        PurchaseActionButtons(
          backButtonText: context.locale.returnToCart,
          continueButtonText: context.locale.proceedToDelivery,
          onTapContinue: () {
            context.push(DeliveryPage.path);
          },
        ),
      ],
    );
  }
}
