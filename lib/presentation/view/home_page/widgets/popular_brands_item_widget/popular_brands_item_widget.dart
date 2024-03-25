import 'package:ecommerce_app/core/local_storage/local_storage.dart';
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

class PopularBrandsItemWidget extends StatelessWidget {
  const PopularBrandsItemWidget({super.key, required this.iconPath});
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _PopularBrandsItemWidgetWeb(iconPath: iconPath),
      tablet: _PopularBrandsItemWidgetWeb(iconPath: iconPath),
      phone: _PopularBrandsItemWidgetPhone(iconPath: iconPath),
    );
  }
}
