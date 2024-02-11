import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class DiscountToolTipContentWidget extends StatelessWidget {
  const DiscountToolTipContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 325,
      child: ParallaxStack(
        layers: [
          ParallaxLayer(
            yRotation: 0.2,
            xRotation: 0.2,
            xOffset: 20,
            yOffset: 20,
            child: Container(
              height: 80,
              width: 325,
              decoration: BoxDecoration(
                  color: colorPalette.primary,
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colorPalette.accent1.withOpacity(.5)),
                          child: Center(
                            child: Icon(
                              Icons.card_giftcard_rounded,
                              color: colorPalette.primary,
                              size: 30,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "10%",
                              style: typography.h5Title.copyWith(
                                color: colorPalette.accent1,
                              ),
                            ),
                            Text(
                              "This week’s discount",
                              style: typography.bodyText4.copyWith(
                                color: colorPalette.gray2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Text(
                          "SHARE\nA GIFT",
                          style: typography.bodyText2.copyWith(
                            color: colorPalette.accent1,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
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
