import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class RatebarWidget extends StatelessWidget {
  const RatebarWidget({super.key, this.activeColor, this.size});
  final Color? activeColor;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
          size: size,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
          size: size,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
          size: size,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: activeColor ?? colorPalette.accent3,
          size: size,
        ),
        Icon(
          Icons.star_rate_rounded,
          color: colorPalette.gray4,
          size: size,
        ),
      ],
    );
  }
}
