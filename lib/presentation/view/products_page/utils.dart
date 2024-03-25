part of "products_page.dart";

bool _shouldStuckWidgetTop(BuildContext context, bool isStuckTop) =>
    isStuckTop && !context.isPhone;

double? _rightPosition(BuildContext context) {
  return !context.isLtrLocale ? getIt<SizeConfig>().padding : null;
}

double? _leftPosition(BuildContext context) {
  return context.isLtrLocale ? getIt<SizeConfig>().padding : null;
}

double _topPosition(WidgetStuckerController controller) {
  return controller.isStuckBottom
      ? controller.stickWidgetTopOffset
      : controller.stickWidgetVerticalyPadding;
}

Widget filtersBuilder({GlobalKey<State<StatefulWidget>>? key}) =>
    RepaintBoundary(
        child: FiltersWidget(
      key: key,
    ));
