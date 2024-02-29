import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

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
