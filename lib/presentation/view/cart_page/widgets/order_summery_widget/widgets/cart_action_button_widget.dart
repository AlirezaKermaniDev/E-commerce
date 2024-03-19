import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class CartActionButtonWidget extends StatelessWidget {
  const CartActionButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.backgroundColor,
  });

  final String title;
  final VoidCallback onTap;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: colorPalette.darkPrimary,
              width: 1.5,
            ),
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            title,
            style: _textColor(),
          ),
        ),
      ),
    );
  }

  TextStyle _textColor() {
    return typography.bodyText2.copyWith(
        color: backgroundColor == colorPalette.darkPrimary
            ? colorPalette.primary
            : colorPalette.darkPrimary);
  }
}
