import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
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
      padding: EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
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
                          context
                              .locale.ourShopIsTheBestChoiceForBuyingFootwear,
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
                          context.locale.home,
                          style: typography.h5Title.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          context.locale.supportCenter,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.customerSupport,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.copyright,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.popularCampaign,
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
                          context.locale.ourInformation,
                          style: typography.h5Title.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          context.locale.returnPolicy,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.privacyPolicy,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.termsAndConditions,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.siteMap,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.storeHours,
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
                          context.locale.myAccount,
                          style: typography.h5Title.copyWith(fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          context.locale.pressInquiries,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.socialMediaDirectories,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.permission,
                          style: typography.bodyText2
                              .copyWith(color: colorPalette.gray1),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          context.locale.requests,
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
                  context.locale.madeWithLoveByMe,
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
