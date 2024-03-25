part of '../subscribe_widget.dart';

class _SubscribeWidgetTablet extends StatelessWidget {
  const _SubscribeWidgetTablet({super.key, this.fullWidth});

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
            child: _animatorWidgetBuilder(
              slideBeginOffset: Offset(fullWidth == true ? -0.1 : -1, 0),
              child: Container(
                height: 580,
                width: fullWidth == true ? 1.w(context) : .9.w(context),
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
                      left: 20, right: 60, top: 32, bottom: 60),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 60,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _animatorWidgetBuilder(
                              child: Text(
                                context
                                    .locale.subscribeNowToGetTheLatestUpdates,
                                style: typography.h3Title.copyWith(
                                  color: colorPalette.primary,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            _animatorWidgetBuilder(
                              child: Container(
                                height: 65,
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
                            _animatorWidgetBuilder(
                              child: Container(
                                height: 65,
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
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _socialMediaIconBuilder(CustomIcons.twiter),
                                  _socialMediaSpacer,
                                  _socialMediaIconBuilder(CustomIcons.facebook),
                                  _socialMediaSpacer,
                                  _socialMediaIconBuilder(
                                      CustomIcons.instagram),
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
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  right: fullWidth == true ? 80 : 40,
                                  bottom: fullWidth == true ? 0 : 20),
                              child: _animatorWidgetBuilder(
                                slideTransition: false,
                                child: Container(
                                  height: 250,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: colorPalette.gradient4),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 0, left: 100),
                              child: Transform.scale(
                                scale: fullWidth == true ? .9 : 1.5,
                                child: Transform.rotate(
                                    angle: 1,
                                    child: _animatorWidgetBuilder(
                                        rotateTransition: true,
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
}
