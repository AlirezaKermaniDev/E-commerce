part of '../delivery_body_widget.dart';

class _DeliveryBodyWidgetWeb extends StatelessWidget {
  const _DeliveryBodyWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(child: DeliveryFormWidget()),
          const SizedBox(
            width: 32,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 1200),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
            child: OrderSummeryWidget(
              withContinueBttons: false,
              cartBloc: getIt<CartBloc>()..add(const CartEvent.getProducts()),
            ),
          )
        ],
      ),
    );
  }
}
