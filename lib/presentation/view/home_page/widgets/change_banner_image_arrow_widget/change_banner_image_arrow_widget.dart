import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ChangeBannerImageArrowWidget extends StatelessWidget {
  const ChangeBannerImageArrowWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: colorPalette.accent1, width: 1.5)),
      child: Center(
        child: Icon(
          icon,
          size: 21,
          color: colorPalette.accent1,
        ),
      ),
    );
  }
}
