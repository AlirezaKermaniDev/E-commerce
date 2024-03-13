import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ArrowTitleButtonWidget extends StatelessWidget {
  const ArrowTitleButtonWidget(
      {super.key,
      required this.title,
      this.isForwardArrow = true,
      required this.onTap,
      this.color,
      this.icon,
      this.iconSize,
      this.mainAxisAlignment});

  final String title;
  final bool isForwardArrow;
  final VoidCallback onTap;
  final Color? color;
  final IconData? icon;
  final double? iconSize;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ArrowTitleButtonWidgetWeb(
        title: title,
        isForwardArrow: isForwardArrow,
        onTap: onTap,
        color: color,
        icon: icon,
        iconSize: iconSize,
        mainAxisAlignment: mainAxisAlignment,
      ),
      tablet: _ArrowTitleButtonWidgetWeb(
        title: title,
        isForwardArrow: isForwardArrow,
        onTap: onTap,
        color: color,
        icon: icon,
        iconSize: iconSize,
        mainAxisAlignment: mainAxisAlignment,
      ),
      phone: const _ArrowTitleButtonWidgetPhone(),
    );
  }
}
