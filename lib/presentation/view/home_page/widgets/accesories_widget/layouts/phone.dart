part of '../accesories_widget.dart';

class _AccesoriesWidgetPhone extends StatelessWidget {
  const _AccesoriesWidgetPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1200,
      width: 1.w(context),
      child: Column(
        children: [
          Expanded(
              child: AccessoriesItemWidget(
            description: context.locale.weReceiveNewSportwearEveryDay,
            title: context.locale.football,
            imagePath: AssetHandler.ball,
            color: colorPalette.darkPrimary,
            backgroundColor: colorPalette.accent2,
          )),
          Expanded(
              child: AccessoriesItemWidget(
            description: context.locale.weReceiveNewSportwearEveryDay,
            title: context.locale.volleyball,
            imagePath: AssetHandler.volley,
            color: colorPalette.accent2,
            backgroundColor: colorPalette.darkPrimary,
          ))
        ],
      ),
    );
  }

  SizedBox backgroundColorWidget() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: colorPalette.accent2,
          )),
          Expanded(
              child: Container(
            color: colorPalette.darkPrimary,
          )),
        ],
      ),
    );
  }
}
