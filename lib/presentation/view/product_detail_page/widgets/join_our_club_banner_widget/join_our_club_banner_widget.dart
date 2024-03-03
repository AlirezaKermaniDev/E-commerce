import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class JoinOurClubBannerWidget extends StatelessWidget {
  const JoinOurClubBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _JoinOurClubBannerWidgetWeb(),
      tablet: _JoinOurClubBannerWidgetTablet(),
      phone: _JoinOurClubBannerWidgetPhone(),
    );
  }
}