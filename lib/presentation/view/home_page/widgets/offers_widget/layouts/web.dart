part of '../offers_widget.dart';

class _OffersWidgetWeb extends StatelessWidget {
  const _OffersWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
              delay: const Duration(milliseconds: 3100), blur: offset),
          child: OfferItemWidget(
            title: context.locale.freeShipping,
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        WidgetAnimator(
          incomingEffect: WidgetTransitionEffects.incomingSlideInFromBottom(
              delay: const Duration(milliseconds: 3300), blur: offset),
          child: OfferItemWidget(
            title: context.locale.freeReturns,
          ),
        ),
      ],
    );
  }
}
