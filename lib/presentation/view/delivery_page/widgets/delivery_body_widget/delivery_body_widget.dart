import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_widget/order_summery_widget.dart';
import 'package:ecommerce_app/presentation/view/delivery_page/widgets/delivery_form_widget/delivery_form_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class DeliveryBodyWidget extends StatelessWidget {
  const DeliveryBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _DeliveryBodyWidgetWeb(),
      tablet: _DeliveryBodyWidgetTablet(),
      phone: _DeliveryBodyWidgetPhone(),
    );
  }
}
