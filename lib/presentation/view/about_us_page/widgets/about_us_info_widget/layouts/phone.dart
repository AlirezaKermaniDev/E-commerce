part of '../about_us_info_widget.dart';

class _AboutUsInfoWidgetPhone extends StatelessWidget {
  const _AboutUsInfoWidgetPhone({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50, bottom: 60),
      color: colorPalette.darkPrimary,
      child: ConstraintsWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AboutUsInfoItemsWidget(
              icon: CustomIcons.founded,
              value: "2014",
              lable: context.locale.founded,
              isPhone: true,
            ),
            const SizedBox(
              height: 50,
            ),
            AboutUsInfoItemsWidget(
              icon: CustomIcons.clients,
              value: "2000+",
              lable: context.locale.clients,
              isPhone: true,
            ),
            const SizedBox(
              height: 50,
            ),
            AboutUsInfoItemsWidget(
              icon: CustomIcons.countries,
              value: "20",
              lable: context.locale.countriesDelivered,
              isPhone: true,
            ),
          ],
        ),
      ),
    );
  }
}
