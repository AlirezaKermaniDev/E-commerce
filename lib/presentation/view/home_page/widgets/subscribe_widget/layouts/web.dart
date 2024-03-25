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
            width: double.infinity,
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
                width: _boxWidth(context, fullWidth),
                decoration: BoxDecoration(
                  gradient: colorPalette.gradient1,
                  borderRadius: _boxBorderRadius(context, fullWidth),
                ),
                child: ConstraintsWidget(
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
                            _animatorWidgetBuilder(
                              slideTransition: false,
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
                              _animatorWidgetBuilder(
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
                              _animatorWidgetBuilder(
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
                              _animatorWidgetBuilder(
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
                                      style: typography.bodyText1.copyWith(
                                          color: colorPalette.primary),
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
                                child: _animatorWidgetBuilder(
                                  slideTransition: false,
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
                                  scale: _imageScale(context, fullWidth),
                                  child: Transform.rotate(
                                      angle: 1,
                                      child: _animatorWidgetBuilder(
                                          rotateTransition: true,
                                          child:
                                              Image.asset(AssetHandler.shoe6))),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 90, right: 32),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
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
                        ))
                      ],
                    ),
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
