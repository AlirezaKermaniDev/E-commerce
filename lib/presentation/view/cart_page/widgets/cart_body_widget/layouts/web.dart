part of '../cart_body_widget.dart';

class _CartBodyWidgetWeb extends StatelessWidget {
  const _CartBodyWidgetWeb({
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: CartProductsListWidget(
            listViewKey: listViewKey,
          )),
          const SizedBox(
            width: 70,
          ),
          AnimatorWidget(
            withFadeTransition: true,
            delay: const Duration(milliseconds: 200),
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
            child: Visibility(
              visible: !isStuckTop,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: orderSummeryBuilder(
                  key: orderSummeryKey, cartBloc: context.read<CartBloc>()),
            ),
          )
        ],
      ),
    );
  }
}
