part of '../footer_widget.dart';

class _FooterWidgetPhone extends StatelessWidget {
  const _FooterWidgetPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstraintsWidget(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
            child: Column(
              children: [
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(AssetHandler.logo)),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: .4.w(context),
                  child: Text(
                    context.locale.ourShopIsTheBestChoiceForBuyingFootwear,
                    style: typography.bodyText2
                        .copyWith(color: colorPalette.gray1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.6,
            height: 60,
            color: colorPalette.gray5,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
            child: Column(
              children: [
                Text(
                  context.locale.home,
                  style: typography.bodyText1.copyWith(fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  context.locale.ourInformation,
                  style: typography.bodyText1.copyWith(fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  context.locale.myAccount,
                  style: typography.bodyText1.copyWith(fontSize: 22),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.6,
            height: 60,
            color: colorPalette.gray5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                CustomIcons.twiter,
                height: 23,
                width: 23,
              ),
              const SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                CustomIcons.facebook,
                height: 23,
                width: 23,
              ),
              const SizedBox(
                width: 50,
              ),
              SvgPicture.asset(
                CustomIcons.instagram,
                height: 23,
                width: 23,
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            width: 1.w(context),
            height: 80,
            child: Text(
              context.locale.madeWithLoveByMe,
              style: typography.bodyText2.copyWith(color: colorPalette.gray1),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
