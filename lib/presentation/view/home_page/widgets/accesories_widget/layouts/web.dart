part of '../accesories_widget.dart';

class _AccesoriesWidgetWeb extends StatelessWidget {
  const _AccesoriesWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      child: SizedBox(
        height: 450,
        width: 1.w(context),
        child: Row(
          children: [
            Expanded(
                child: Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(color: colorPalette.accent2),
                  child: Row(
                    children: [
                      Expanded(
                          child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 100, bottom: 30),
                              child: SvgPicture.asset(AssetHandler.shape5),
                            ),
                          ),
                          Center(
                            child: AnimatorWidget(
                                withFadeTransition: true,
                                delay: const Duration(milliseconds: 50),
                                scaleTransition:
                                    Tween<double>(begin: .9, end: 1),
                                child: Image.asset(AssetHandler.ball)),
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 244,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 50),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.accesories,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.darkPrimary),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 100),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.football,
                                style: typography.h2Title
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 150),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.weReceiveNewSportwearEveryDay,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 200),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: ButtonWidget(
                                title: context.locale.shopNow,
                                color: colorPalette.darkPrimary,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(AssetHandler.shape3),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150, bottom: 50),
                    child: SvgPicture.asset(AssetHandler.shape1),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(color: colorPalette.darkPrimary),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: SvgPicture.asset(AssetHandler.shape5),
                              ),
                            ),
                            Center(
                                child: AnimatorWidget(
                                    withFadeTransition: true,
                                    delay: const Duration(milliseconds: 50),
                                    scaleTransition: Tween<double>(
                                      begin: .9,
                                      end: 1,
                                    ),
                                    child: Image.asset(AssetHandler.volley))),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 244,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 50),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.accesories,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.accent2),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 100),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.volleyball,
                                style: typography.h2Title
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 150),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: Text(
                                context.locale.weReceiveNewSportwearEveryDay,
                                style: typography.bodyText2
                                    .copyWith(color: colorPalette.primary),
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              delay: const Duration(milliseconds: 200),
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(.2, 0), end: Offset.zero),
                              child: ButtonWidget(
                                title: context.locale.shopNow,
                                color: colorPalette.accent2,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: SvgPicture.asset(AssetHandler.shape4),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 130, bottom: 20),
                    child: SvgPicture.asset(AssetHandler.shape2),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
