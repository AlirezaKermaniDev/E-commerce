import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class BreadcrumbWidget extends StatelessWidget {
  const BreadcrumbWidget(
      {super.key,
      required this.items,
      this.selectedItem,
      this.isBold = false,
      this.unSelectedColor});

  final List<String> items;
  final String? selectedItem;
  final bool isBold;
  final Color? unSelectedColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _BreadcrumbWidgetWeb(
        items: items,
        selectedItem: selectedItem,
        isBold: isBold,
        unSelectedColor: unSelectedColor,
      ),
      tablet: _BreadcrumbWidgetWeb(
        items: items,
        selectedItem: selectedItem,
        isBold: isBold,
        unSelectedColor: unSelectedColor,
      ),
      phone: _BreadcrumbWidgetWeb(
        items: items,
        selectedItem: selectedItem,
        isBold: isBold,
        unSelectedColor: unSelectedColor,
      ),
    );
  }
}
