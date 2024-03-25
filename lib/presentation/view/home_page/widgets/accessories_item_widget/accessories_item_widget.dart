import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/button_widget/button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "./widgets/accessories_detail_widget.dart";
part "utils.dart";

class AccessoriesItemWidget extends StatelessWidget {
  const AccessoriesItemWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.color,
      this.backgroundColor});

  final String title;
  final String description;
  final String imagePath;
  final Color color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AccessoriesItemWidgetWeb(
        title: title,
        description: description,
        imagePath: imagePath,
        color: color,
      ),
      tablet: _AccessoriesItemWidgetWeb(
        title: title,
        description: description,
        imagePath: imagePath,
        color: color,
      ),
      phone: _AccessoriesItemWidgetPhone(
        title: title,
        description: description,
        imagePath: imagePath,
        color: color,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
