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
        Expanded(
          child: WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
              delay: const Duration(milliseconds: 3100),
              blur: offset,
            ),
            child: OfferItemWidget(
              title: context.locale.freeShipping,
            ),
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Expanded(
          child: WidgetAnimator(
            incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
                delay: const Duration(milliseconds: 3300), blur: offset),
            child: OfferItemWidget(
              title: context.locale.freeReturns,
            ),
          ),
        ),
      ],
    );
  }
}
