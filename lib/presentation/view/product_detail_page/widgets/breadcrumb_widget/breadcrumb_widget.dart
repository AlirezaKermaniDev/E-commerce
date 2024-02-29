import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class BreadcrumbWidget extends StatelessWidget {
  const BreadcrumbWidget({super.key, required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _BreadcrumbWidgetWeb(
        items: items,
      ),
      tablet: const _BreadcrumbWidgetTablet(),
      phone: const _BreadcrumbWidgetPhone(),
    );
  }
}
