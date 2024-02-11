import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/arrow_button_widget/arrow_button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _HomeBannerWidgetWeb(),
      tablet: _HomeBannerWidgetTablet(),
      phone: _HomeBannerWidgetPhone(),
    );
  }
}
