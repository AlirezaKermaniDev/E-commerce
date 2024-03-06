import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SelectDeliveryMethodWidget extends StatelessWidget {
  const SelectDeliveryMethodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _SelectDeliveryMethodWidgetWeb(),
      tablet: _SelectDeliveryMethodWidgetTablet(),
      phone: _SelectDeliveryMethodWidgetPhone(),
    );
  }
}
