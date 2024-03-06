import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/delivery_page/widgets/delivery_user_detail_widget/delivery_user_detail_widget.dart';
import 'package:ecommerce_app/presentation/view/delivery_page/widgets/select_delivery_method_widget/select_delivery_method_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class DeliveryFormWidget extends StatelessWidget {
  const DeliveryFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _DeliveryFormWidgetWeb(),
      tablet: _DeliveryFormWidgetTablet(),
      phone: _DeliveryFormWidgetPhone(),
    );
  }
}
