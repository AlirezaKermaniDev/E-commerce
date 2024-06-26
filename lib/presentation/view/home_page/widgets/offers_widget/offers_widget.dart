import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/offers_item_widget/offers_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _OffersWidgetWeb(),
      tablet: _OffersWidgetWeb(),
      phone: _OffersWidgetPhone(),
    );
  }
}
