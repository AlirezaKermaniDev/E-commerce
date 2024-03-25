import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

class ProductDetailTooltipContentWidget extends StatelessWidget {
  const ProductDetailTooltipContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: 325,
      child: ParallaxStack(
        layers: [
          ParallaxLayer(
            yRotation: 0.2,
            xRotation: 0.2,
            xOffset: 20,
            yOffset: 20,
            child: Container(
              height: 125,
              width: 325,
              decoration: BoxDecoration(
                  color: colorPalette.primary,
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            AssetHandler.banner3,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            right: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(context.locale.nikeAirShoesForMen,
                                  style: typography.bodyText2
                                      .copyWith(fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("${context.locale.size}:",
                                          style: typography.bodyText4.copyWith(
                                              fontWeight: FontWeight.bold)),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text("9.5",
                                          style: typography.bodyText4.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: colorPalette.gray3)),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text("\$1080",
                                          style: typography.bodyText4.copyWith(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 23,
                                    child: SvgPicture.asset(
                                      CustomIcons.shopping,
                                      color: colorPalette.gray1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
