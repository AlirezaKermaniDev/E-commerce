import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/address_page/widgets/address_form_fields_widget/address_form_fields_widget.dart';
import 'package:ecommerce_app/presentation/view/billing_page/widgets/purchase_action_buttons/purchase_action_buttons.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_widget/order_summery_widget.dart';
import 'package:ecommerce_app/presentation/view/delivery_page/delivery_page.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AddressBodyWidget extends StatelessWidget {
  const AddressBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _AddressBodyWidgetWeb(),
      tablet: _AddressBodyWidgetWeb(),
      phone: _AddressBodyWidgetPhone(),
    );
  }
}
