import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class AboutUsFeaturesItemWidget extends StatelessWidget {
  const AboutUsFeaturesItemWidget(
      {super.key,
      required this.isLtR,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.shapePath,
      required this.titleColor});
  final bool isLtR;
  final String title;
  final String description;
  final String imagePath;
  final String shapePath;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AboutUsFeaturesItemWidgetWeb(
        title: title,
        description: description,
        titleColor: titleColor,
        imagePath: imagePath,
        shapePath: shapePath,
        isLtR: isLtR,
      ),
      tablet: _AboutUsFeaturesItemWidgetTablet(
        title: title,
        description: description,
        titleColor: titleColor,
        imagePath: imagePath,
        shapePath: shapePath,
        isLtR: isLtR,
      ),
      phone: _AboutUsFeaturesItemWidgetPhone(
        title: title,
        description: description,
        titleColor: titleColor,
        imagePath: imagePath,
        shapePath: shapePath,
        isLtR: isLtR,
      ),
    );
  }
}
