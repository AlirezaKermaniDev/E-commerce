import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class PurchasedTooltipContentWidget extends StatelessWidget {
  const PurchasedTooltipContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 280,
      child: ParallaxStack(
        layers: [
          ParallaxLayer(
            yRotation: 0.2,
            xRotation: 0.2,
            xOffset: 20,
            yOffset: 20,
            child: Container(
              height: 70,
              width: 280,
              decoration: BoxDecoration(
                  color: colorPalette.primary,
                  borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.asset(AssetHandler.person1),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Joan",
                            style: typography.bodyText2
                                .copyWith(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                " ${context.locale.hasJustPurchasedTheseSneakersNow}",
                            style: typography.bodyText4
                                .copyWith(color: colorPalette.gray1)),
                      ])),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
