part of '../accesories_widget.dart';

class _AccesoriesWidgetTablet extends StatelessWidget {
  const _AccesoriesWidgetTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      child: SizedBox(
        height: 450,
        width: double.infinity,
        child: Stack(
          children: [
            backgroundColorWidget(),
            Center(
              child: SizedBox(
                width: 1.w(context),
                child: Row(
                  children: [
                    Expanded(
                        child: AccessoriesItemWidget(
                      description: context.locale.weReceiveNewSportwearEveryDay,
                      title: context.locale.football,
                      imagePath: AssetHandler.ball,
                      color: colorPalette.darkPrimary,
                    )),
                    Expanded(
                        child: AccessoriesItemWidget(
                      description: context.locale.weReceiveNewSportwearEveryDay,
                      title: context.locale.volleyball,
                      imagePath: AssetHandler.volley,
                      color: colorPalette.accent2,
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
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
