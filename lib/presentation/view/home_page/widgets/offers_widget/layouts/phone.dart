part of '../offers_widget.dart';

class _OffersWidgetPhone extends StatelessWidget {
  const _OffersWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
            delay: const Duration(milliseconds: 3100),
            blur: const Offset(20, 20),
          ),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: colorPalette.accent2, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: colorPalette.primary,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                context.locale.freeShipping,
                style: typography.bodyText2.copyWith(color: colorPalette.gray1),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
            delay: const Duration(milliseconds: 3300),
            blur: const Offset(20, 20),
          ),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: colorPalette.accent2, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.done,
                    color: colorPalette.primary,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                context.locale.freeReturns,
                style: typography.bodyText2.copyWith(color: colorPalette.gray1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
