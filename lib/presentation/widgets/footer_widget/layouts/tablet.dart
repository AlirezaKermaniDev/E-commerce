part of '../footer_widget.dart';

class _FooterWidgetTablet extends StatelessWidget {
  _FooterWidgetTablet({super.key});

  final TextStyle _itemsTextStyle =
      typography.bodyText4.copyWith(color: colorPalette.gray1, fontSize: 16);

  final TextStyle _lablesTextStyle = typography.h5Title.copyWith(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getIt<SizeConfig>().padding, vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
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
                            style: _itemsTextStyle,
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
                const SizedBox(
                  width: 16,
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
                          Text(context.locale.home, style: _lablesTextStyle),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(context.locale.supportCenter,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.customerSupport,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.copyright,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.popularCampaign,
                              style: _itemsTextStyle),
                        ],
                      ),
                    )),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    flex: 4,
                    child: SizedBox(
                      height: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(context.locale.ourInformation,
                              style: _lablesTextStyle),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(context.locale.returnPolicy,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.privacyPolicy,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.termsAndConditions,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.siteMap, style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.storeHours,
                              style: _itemsTextStyle),
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
                          Text(context.locale.myAccount,
                              style: _lablesTextStyle),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(context.locale.pressInquiries,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.socialMediaDirectories,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.permission,
                              style: _itemsTextStyle),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(context.locale.requests, style: _itemsTextStyle),
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
                  Text(context.locale.madeWithLoveByMe, style: _itemsTextStyle)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
