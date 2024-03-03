import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_costs_item_widget/order_summery_costs_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class OrderSummeryWidget extends StatelessWidget {
  const OrderSummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _OrderSummeryWidgetWeb(),
      tablet: _OrderSummeryWidgetTablet(),
      phone: _OrderSummeryWidgetPhone(),
    );
  }
}
