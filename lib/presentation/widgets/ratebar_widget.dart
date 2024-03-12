import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class RatebarWidget extends StatelessWidget {
  const RatebarWidget({super.key, this.activeColor});
  final Color? activeColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: colorPalette.gray4,
        ),
      ],
    );
  }
}
