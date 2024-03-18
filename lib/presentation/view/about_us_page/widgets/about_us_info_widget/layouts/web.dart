part of '../about_us_info_widget.dart';

class _AboutUsInfoWidgetWeb extends StatelessWidget {
  const _AboutUsInfoWidgetWeb({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50, bottom: 60),
      color: colorPalette.darkPrimary,
      child: ConstraintsWidget(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AboutUsInfoItemsWidget(
              icon: CustomIcons.founded,
              value: "2014",
              lable: context.locale.founded,
              isPhone: false,
            ),
            AboutUsInfoItemsWidget(
              icon: CustomIcons.clients,
              value: "2000+",
              lable: context.locale.clients,
              isPhone: false,
            ),
            AboutUsInfoItemsWidget(
              icon: CustomIcons.countries,
              value: "20",
              lable: context.locale.countriesDelivered,
              isPhone: false,
            ),
          ],
        ),
      ),
    );
  }
}
