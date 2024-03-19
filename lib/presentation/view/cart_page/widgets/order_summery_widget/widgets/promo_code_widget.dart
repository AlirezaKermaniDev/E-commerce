import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class PromoCodeWidget extends StatelessWidget {
  const PromoCodeWidget({
    super.key,
  });

  final double height = 56;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              height: height,
              decoration: BoxDecoration(
                border: Border.all(
                  color: colorPalette.gray6,
                  width: 1.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      context.locale.promoCode,
                      style: typography.bodyText4.copyWith(
                        color: colorPalette.gray2,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            child: Container(
          height: height,
          decoration: BoxDecoration(
            color: colorPalette.darkPrimary,
          ),
          child: Center(
            child: Text(
              context.locale.apply,
              style: typography.bodyText2.copyWith(color: colorPalette.primary),
            ),
          ),
        )),
      ],
    );
  }
}
