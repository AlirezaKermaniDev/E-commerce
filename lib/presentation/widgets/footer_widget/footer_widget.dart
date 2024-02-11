import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(
                  height: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 70,
                          width: 70,
                          child: Image.asset(AssetHandler.logo)),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Our shop is the best choice for buying footwear.",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(CustomIcons.twiter),
                          const SizedBox(
                            width: 50,
                          ),
                          SvgPicture.asset(CustomIcons.facebook),
                          const SizedBox(
                            width: 50,
                          ),
                          SvgPicture.asset(CustomIcons.instagram),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Home",
                          style: typography.h5Title.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Support Center",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Customer Support",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Copyright",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Popular Campaign",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Our Information",
                          style: typography.h5Title.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Return Policy",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Privacy Policy",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Terms and Conditions",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Site Map",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Store Hours",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "My Account",
                          style: typography.h5Title.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Press Inquiries",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Social Media Directories",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Permission",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Requests",
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          Divider(
            color: colorPalette.gray5,
            thickness: 1.6,
          ),
          SizedBox(
            width: 1.w(context),
            height: 80,
            child: Row(
              children: [
                Text(
                  "© 2023 Shop. Made with love by Alireza kermani",
                  style:
                      typography.bodyText2.copyWith(color: colorPalette.gray1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
