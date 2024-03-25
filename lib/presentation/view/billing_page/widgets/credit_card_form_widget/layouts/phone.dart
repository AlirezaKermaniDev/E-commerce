part of '../credit_card_form_widget.dart';

class _CreditCardFormWidgetPhone extends StatelessWidget {
  const _CreditCardFormWidgetPhone({
    super.key,
  });
  static const double _textFieldHeight = 55;
  static const double _spaceValue = 12;
  @override
  Widget build(BuildContext context) {
    return _animatorWidgetBuilder(
      millisecondsDelay: 100,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: colorPalette.gray5,
            width: 1.6,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
          child: Column(
            children: [
              _animatorWidgetBuilder(
                millisecondsDelay: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.3,
                          child: Radio.adaptive(
                            value: true,
                            groupValue: true,
                            onChanged: (_) {},
                            activeColor: colorPalette.accent2,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          context.locale.creditCard,
                          style: typography.bodyText2,
                        )
                      ],
                    ),
                    SvgPicture.asset(CustomIcons.visaLogo)
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              _animatorWidgetBuilder(
                millisecondsDelay: 300,
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
                  millisecondsDelay: 400,
                  child: SizedBox(
                    height: _textFieldHeight,
                    child: TextFieldWidget(
                        lable: context.locale.cardNumber, onChange: (_) {}),
                  )),
              const SizedBox(
                height: _spaceValue,
              ),
              _animatorWidgetBuilder(
                  millisecondsDelay: 500,
                  child: SizedBox(
                    height: _textFieldHeight,
                    child: TextFieldWidget(
                        lable: context.locale.cardHolderName, onChange: (_) {}),
                  )),
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
                            lable: context.locale.expirationDate,
                            onChange: (_) {}),
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
                              lable: context.locale.securityCode,
                              onChange: (_) {}),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
