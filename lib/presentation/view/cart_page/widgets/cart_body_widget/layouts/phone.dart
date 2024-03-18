part of '../cart_body_widget.dart';

class _CartBodyWidgetPhone extends StatelessWidget {
  const _CartBodyWidgetPhone({
    super.key,
    required this.isStuckTop,
    required this.orderSummeryKey,
    required this.listViewKey,
  });
  final bool isStuckTop;
  final GlobalKey<State<StatefulWidget>>? orderSummeryKey;
  final GlobalKey<State<StatefulWidget>>? listViewKey;
  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartProductsListWidget(
              listViewKey: listViewKey,
            ),
            const SizedBox(
              width: 32,
            ),
            AnimatorWidget(
                withFadeTransition: true,
                delay: const Duration(milliseconds: 200),
                slideTransition:
                    Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
                child: OrderSummeryWidget(
                  cartBloc: context.read<CartBloc>(),
                ))
          ],
        ),
      ),
    );
  }
}
