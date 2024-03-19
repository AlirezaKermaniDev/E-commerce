part of '../address_form_fields_widget.dart';

class _AddressFormFieldsWidgetPhone extends StatelessWidget {
  const _AddressFormFieldsWidgetPhone({
    super.key,
  });
  static const double _textFieldHeight = 55;
  static const double _spaceValue = 12;
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
          height: _spaceValue,
        ),
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 100),
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
          child: SizedBox(
            height: _textFieldHeight,
            child: TextFieldWidget(
              lable: context.locale.email,
              onChange: (value) {},
            ),
          ),
        ),
        const SizedBox(
          height: _spaceValue,
        ),
        Row(
          children: [
            Expanded(
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 200),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.name,
                    onChange: (value) {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: _spaceValue,
            ),
            Expanded(
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 300),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.lastName,
                    onChange: (value) {},
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: _spaceValue,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 300),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.address,
                    onChange: (value) {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: _spaceValue,
            ),
            Expanded(
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 400),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: SizedBox(
                    height: _textFieldHeight,
                    child: TextFieldWidget(
                      lable: context.locale.aptUnitEtc,
                      onChange: (value) {},
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: _spaceValue,
        ),
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 500),
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
          child: SizedBox(
            height: _textFieldHeight,
            child: TextFieldWidget(
              lable: "${context.locale.town}/${context.locale.city}",
              onChange: (value) {},
            ),
          ),
        ),
        const SizedBox(
          height: _spaceValue,
        ),
        Row(
          children: [
            Expanded(
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 600),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.country,
                    onChange: (value) {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: _spaceValue,
            ),
            Expanded(
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 700),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.zip,
                    onChange: (value) {},
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: _spaceValue,
            ),
            Expanded(
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 800),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.state,
                    onChange: (value) {},
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 900),
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
        if (!context.isPhone)
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
