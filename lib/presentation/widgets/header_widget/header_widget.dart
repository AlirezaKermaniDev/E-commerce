import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'layouts/phone.dart';
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.selectedIndex,
    required this.backgroundColor,
    this.forgroundColor,
  });
  final int selectedIndex;
  final Color backgroundColor;
  final Color? forgroundColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _HeaderWidgetWeb(
          selectedIndex: selectedIndex,
          backgroundColor: backgroundColor,
          forgroundColor: forgroundColor),
      phone: const _HeaderWidgetPhone(),
      tablet: const _HeaderWidgetTablet(),
    );
  }
}
