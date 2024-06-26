import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_features_item_widget/about_us_features_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class AboutUsFeaturesWidget extends StatelessWidget {
  const AboutUsFeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _AboutUsFeaturesWidgetWeb(),
      tablet: _AboutUsFeaturesWidgetTablet(),
      phone: _AboutUsFeaturesWidgetPhone(),
    );
  }
}
