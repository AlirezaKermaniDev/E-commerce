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
        _animatorWidgetBuilder(
          child: Divider(
            color: colorPalette.gray5,
            thickness: 1.6,
            height: 3,
          ),
        ),
        const SizedBox(
          height: _spaceValue,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 100,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 200,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 300,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 300,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 400,
                child: SizedBox(
                  height: _textFieldHeight,
                  child: TextFieldWidget(
                    lable: context.locale.aptUnitEtc,
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
        _animatorWidgetBuilder(
          millisecondsDelay: 500,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 600,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 700,
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
              child: _animatorWidgetBuilder(
                millisecondsDelay: 800,
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
      ],
    );
  }
}
