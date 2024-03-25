part of 'order_summery_widget.dart';

Column _continueButtonsWidget(BuildContext context) {
  return Column(
    children: [
      const SizedBox(
        height: 60,
      ),
      CartActionButtonWidget(
        onTap: () {
          context.push(AddressPage.path);
        },
        title: context.locale.proceedToCheckout,
        backgroundColor: colorPalette.darkPrimary,
      ),
      const SizedBox(
        height: 16,
      ),
      CartActionButtonWidget(
        onTap: () {
          context.push(AddressPage.path);
        },
        title: context.locale.memberCheckout,
        backgroundColor: colorPalette.primary,
      ),
      const SizedBox(
        height: 50,
      ),
      Row(
        children: [
          Text(context.locale.acceptedPaymentMethods,
              style: typography.bodyText2),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      const AvailablePaymentMethodsWidget(),
    ],
  );
}

Column _continueButtonsWidgetPhone(BuildContext context) {
  return Column(
    children: [
      const SizedBox(
        height: 25,
      ),
      _animatorWidgetBuilder(
        child: CartActionButtonWidget(
          onTap: () {
            context.push(AddressPage.path);
          },
          title: context.locale.proceedToCheckout,
          backgroundColor: colorPalette.darkPrimary,
        ),
        millisecondsDelay: 900,
      ),
      const SizedBox(
        height: 16,
      ),
      _animatorWidgetBuilder(
        child: CartActionButtonWidget(
          onTap: () {
            context.push(AddressPage.path);
          },
          title: context.locale.memberCheckout,
          backgroundColor: colorPalette.primary,
        ),
        millisecondsDelay: 1000,
      ),
      const SizedBox(
        height: 25,
      ),
      _animatorWidgetBuilder(
        child: Text(context.locale.acceptedPaymentMethods,
            style: typography.bodyText2),
        millisecondsDelay: 1100,
      ),
      const SizedBox(
        height: 16,
      ),
      _animatorWidgetBuilder(
        child: const AvailablePaymentMethodsWidget(),
        millisecondsDelay: 1200,
      ),
      const SizedBox(
        height: 50,
      ),
    ],
  );
}

Widget _animatorWidgetBuilder(
    {required Widget child, required int millisecondsDelay}) {
  return AnimatorWidget(
    withFadeTransition: true,
    withVisibilityDetector: false,
    delay: Duration(milliseconds: millisecondsDelay),
    slideTransition:
        Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
    child: child,
  );
}
