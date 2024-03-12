import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.title,
      required this.color,
      this.shadowColor,
      this.width,
      this.height});

  final String title;
  final Color color;
  final Color? shadowColor;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ButtonWidgetWeb(
          title: title,
          color: color,
          shadowColor: shadowColor,
          width: width,
          height: height),
      tablet: const _ButtonWidgetTablet(),
      phone: const _ButtonWidgetPhone(),
    );
  }
}
