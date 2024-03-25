import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.title,
    required this.shapePath,
    required this.productsCount,
    required this.imageWidget,
    required this.mainColor,
  });
  final String title;
  final String shapePath;
  final int productsCount;
  final Widget imageWidget;
  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _CategoryItemWidgetWeb(
          title: title,
          shapePath: shapePath,
          productsCount: productsCount,
          imageWidget: imageWidget,
          mainColor: mainColor),
      tablet: _CategoryItemWidgetTablet(
          title: title,
          shapePath: shapePath,
          productsCount: productsCount,
          imageWidget: imageWidget,
          mainColor: mainColor),
      phone: _CategoryItemWidgetPhone(
        title: title,
        shapePath: shapePath,
        productsCount: productsCount,
        imageWidget: imageWidget,
        mainColor: mainColor,
      ),
    );
  }
}
