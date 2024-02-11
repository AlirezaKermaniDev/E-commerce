import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AboutUsPopularBrandsWidget extends StatelessWidget {
  const AboutUsPopularBrandsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _AboutUsPopularBrandsWidgetWeb(),
      tablet: _AboutUsPopularBrandsWidgetTablet(),
      phone: _AboutUsPopularBrandsWidgetPhone(),
    );
  }
}
