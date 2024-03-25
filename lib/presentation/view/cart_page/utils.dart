part of "cart_page.dart";

bool _shouldStuckWidgetTop(BuildContext context, bool isStuckTop) =>
    isStuckTop && !context.isPhone;

double? _leftPosition(BuildContext context) =>
    !context.isLtrLocale ? getIt<SizeConfig>().padding : null;

double? _rightPosition(BuildContext context) =>
    context.isLtrLocale ? getIt<SizeConfig>().padding : null;

double _topPosition(WidgetStuckerController controller) {
  return controller.isStuckBottom
      ? controller.stickWidgetTopOffset
      : controller.stickWidgetVerticalyPadding;
}

Widget orderSummeryBuilder(
        {GlobalKey<State<StatefulWidget>>? key, required CartBloc cartBloc}) =>
    RepaintBoundary(
        child: OrderSummeryWidget(
      cartBloc: cartBloc,
      key: key,
    ));
