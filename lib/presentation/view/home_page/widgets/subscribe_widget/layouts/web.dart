part of '../subscribe_widget.dart';

class _SubscribeWidgetWeb extends StatelessWidget {
  const _SubscribeWidgetWeb({super.key, this.fullWidth});

  final bool? fullWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (fullWidth != true)
          Container(
            height: 300,
            width: 1.w(context),
            color: colorPalette.gray6,
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: AnimatorWidget(
              withFadeTransition: true,
              slideTransition: Tween<Offset>(
                  begin: Offset(fullWidth == true ? -0.1 : -1, 0),
                  end: Offset.zero),
              child: Container(
                height: 580,
                width: fullWidth == true ? 1.w(context) : .8.w(context),
                decoration: BoxDecoration(
                  gradient: colorPalette.gradient1,
                  borderRadius: fullWidth == true
                      ? BorderRadius.zero
                      : const BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 60, top: 32, bottom: 60),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          AnimatorWidget(
                            withFadeTransition: true,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: colorPalette.gradient4),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Text(
                                context
                                    .locale.subscribeNowToGetTheLatestUpdates,
                                style: typography.h2Title.copyWith(
                                  color: colorPalette.primary,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Container(
                                height: 86,
                                width: 550,
                                decoration: BoxDecoration(
                                    color: colorPalette.primary,
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    context.locale.enterYouEmail,
                                    style: typography.bodyText1
                                        .copyWith(color: colorPalette.gray2),
                                  ),
                                ),
                              ),
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Container(
                                height: 86,
                                width: 550,
                                decoration: BoxDecoration(
                                    color: colorPalette.accent1,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                                child: Center(
                                  child: Text(
                                    context.locale.subscribe.toUpperCase(),
                                    style: typography.bodyText1
                                        .copyWith(color: colorPalette.primary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: fullWidth == true ? 80 : 0),
                              child: AnimatorWidget(
                                withFadeTransition: true,
                                child: Container(
                                  height: 307,
                                  width: 307,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: colorPalette.gradient4),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 32, left: 100),
                              child: Transform.scale(
                                scale: fullWidth == true ? .9 : 1.2,
                                child: Transform.rotate(
                                    angle: 1,
                                    child: AnimatorWidget(
                                        withFadeTransition: true,
                                        rotateTrasition:
                                            Tween<double>(begin: -.08, end: 0),
                                        child:
                                            Image.asset(AssetHandler.shoe6))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90, right: 32),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                socialMediaIconBuilder(CustomIcons.twiter),
                                const SizedBox(
                                  width: 10,
                                ),
                                socialMediaIconBuilder(CustomIcons.facebook),
                                const SizedBox(
                                  width: 10,
                                ),
                                socialMediaIconBuilder(CustomIcons.instagram),
                              ],
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget socialMediaIconBuilder(String iconPath) {
    return AnimatorWidget(
      withFadeTransition: true,
      slideTransition:
          Tween<Offset>(begin: const Offset(.3, 0), end: Offset.zero),
      child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: colorPalette.primary),
          child: Center(
              child: SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              iconPath,
              color: colorPalette.accent1,
            ),
          ))),
    );
  }
}
