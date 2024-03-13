import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
  
  class WhyChooseOurShopWidget extends StatelessWidget {
    const WhyChooseOurShopWidget({super.key});
  
    @override
    Widget build(BuildContext context) {
      return const ResponsiveBuilder(
        web: _WhyChooseOurShopWidgetWeb(),
        tablet: _WhyChooseOurShopWidgetWeb(),
        phone: _WhyChooseOurShopWidgetPhone(),
      );
    }
  }
  