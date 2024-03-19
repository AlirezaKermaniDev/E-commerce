import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/billing_page/widgets/credit_card_form_widget/credit_card_form_widget.dart';
import 'package:ecommerce_app/presentation/view/billing_page/widgets/purchase_action_buttons/purchase_action_buttons.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class BillingBodyWidget extends StatelessWidget {
  const BillingBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _BillingBodyWidgetWeb(),
      tablet: _BillingBodyWidgetWeb(),
      phone: _BillingBodyWidgetWeb(),
    );
  }
}
