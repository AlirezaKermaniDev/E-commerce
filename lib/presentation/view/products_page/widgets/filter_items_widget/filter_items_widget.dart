import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class FilterItemsWidget extends StatelessWidget {
  const FilterItemsWidget({
    super.key,
    required this.title,
    required this.child,
    this.initialExpanded = true,
    this.headerHeight,
    this.color,
    this.textStyle,
    this.iconSize,
  });
  final String title;
  final Widget child;
  final bool initialExpanded;
  final double? headerHeight;
  final double? iconSize;
  final Color? color;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _FilterItemsWidgetWeb(
        title: title,
        initialExpanded: initialExpanded,
        headerHeight: headerHeight,
        color: color,
        textStyle: textStyle,
        iconSize: iconSize,
        child: child,
      ),
      tablet: const _FilterItemsWidgetTablet(),
      phone: const _FilterItemsWidgetPhone(),
    );
  }
}
