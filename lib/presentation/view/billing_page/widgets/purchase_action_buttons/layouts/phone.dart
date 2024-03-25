part of '../purchase_action_buttons.dart';

class _PurchaseActionButtonsPhone extends StatelessWidget {
  const _PurchaseActionButtonsPhone({
    super.key,
    required this.continueButtonText,
    required this.backButtonText,
    required this.onTapContinue,
  });

  final String continueButtonText;
  final String backButtonText;
  final VoidCallback onTapContinue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _animatorWidgetBuilder(
          millisecondsDelay: 1000,
          child: InkWell(
            onTap: onTapContinue,
            child: Container(
              height: 55,
              width: 1.w(context),
              decoration: BoxDecoration(
                  color: colorPalette.darkPrimary,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(continueButtonText,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.primary)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        _animatorWidgetBuilder(
          millisecondsDelay: 1100,
          child: ArrowTitleButtonWidget(
            title: backButtonText,
            isForwardArrow: false,
            mainAxisAlignment: MainAxisAlignment.center,
            icon: Icons.arrow_back_ios_new_rounded,
            iconSize: 22,
            color: colorPalette.darkPrimary,
            onTap: () {
              context.pop();
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
