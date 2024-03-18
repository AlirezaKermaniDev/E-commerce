import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_info_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AboutUsInfoWidget extends StatelessWidget {
  const AboutUsInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _AboutUsInfoWidgetWeb(),
      tablet: _AboutUsInfoWidgetWeb(),
      phone: _AboutUsInfoWidgetPhone(),
    );
  }
}
