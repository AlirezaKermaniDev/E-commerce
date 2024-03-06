part of '../address_form_fields_widget.dart';

class _AddressFormFieldsWidgetWeb extends StatelessWidget {
  const _AddressFormFieldsWidgetWeb({
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
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 100),
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 200),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 300),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 300),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 400),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 500),
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 600),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 700),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
              child: AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 800),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 1000),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: ArrowTitleButtonWidget(
                title: context.locale.returnToCart,
                isForwardArrow: false,
                icon: Icons.arrow_back_ios_new_rounded,
                iconSize: 22,
                color: colorPalette.darkPrimary,
                onTap: () {},
              ),
            ),
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 1100),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: colorPalette.darkPrimary,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(context.locale.proceedToCheckout,
                        style: typography.bodyText2
                            .copyWith(color: colorPalette.primary)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
