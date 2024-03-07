part of '../purchase_action_buttons.dart';

class _PurchaseActionButtonsWeb extends StatelessWidget {
  const _PurchaseActionButtonsWeb({
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatorWidget(
          withFadeTransition: true,
          delay: const Duration(milliseconds: 1000),
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
          child: ArrowTitleButtonWidget(
            title: backButtonText,
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
            onTap: onTapContinue,
            child: Container(
              height: 60,
              width: 350,
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
      ],
    );
  }
}
