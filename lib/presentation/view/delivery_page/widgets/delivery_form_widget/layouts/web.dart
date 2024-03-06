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
          child: const DeliveryUserDetailWidget(),
        ),
        const SizedBox(
          height: 16,
        ),
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 700),
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
                context.locale.pleaseSendMeSmsShippingUpdatesAboutMyOrder,
                style: typography.bodyText2,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatorWidget(
              withFadeTransition: true,
              delay: const Duration(milliseconds: 1000),
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              child: ArrowTitleButtonWidget(
                title: context.locale.returnToAddress,
                isForwardArrow: false,
                icon: Icons.arrow_back_ios_new_rounded,
                iconSize: 22,
                color: colorPalette.darkPrimary,
                onTap: () {
                  context.pop();
                },
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
                    child: Text(context.locale.proceedToBilling,
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
