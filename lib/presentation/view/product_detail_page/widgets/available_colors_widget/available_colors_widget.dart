import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AvailableColorsWidget extends StatelessWidget {
  const AvailableColorsWidget({super.key, required this.colors});

  final List<int> colors;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AvailableColorsWidgetWeb(colors: colors),
      tablet: _AvailableColorsWidgetWeb(colors: colors),
      phone: _AvailableColorsWidgetWeb(colors: colors),
    );
  }
}
