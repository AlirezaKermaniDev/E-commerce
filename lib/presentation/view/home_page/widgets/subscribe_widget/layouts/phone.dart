part of '../subscribe_widget.dart';

class _SubscribeWidgetPhone extends StatelessWidget {
  const _SubscribeWidgetPhone({super.key, this.fullWidth});

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
              withVisibilityDetector: false,
              slideTransition: Tween<Offset>(
                  begin: Offset(fullWidth == true ? -0.1 : -1, 0),
                  end: Offset.zero),
              child: Container(
                height: 900,
                width: 1.w(context),
                decoration: BoxDecoration(
                  gradient: colorPalette.gradient1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(60),
                  child: Column(
                    children: [
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
                                style: typography.h4Title.copyWith(
                                  color: colorPalette.primary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            AnimatorWidget(
                              withFadeTransition: true,
                              slideTransition: Tween<Offset>(
                                  begin: const Offset(0, .1), end: Offset.zero),
                              child: Container(
                                height: 65,
                                width: 1.w(context),
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
                                height: 65,
                                width: 1.w(context),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, bottom: 20),
                              child: AnimatorWidget(
                                withFadeTransition: true,
                                child: Container(
                                  height: 180,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: colorPalette.gradient4),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Transform.scale(
                                scale: 1.3,
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
