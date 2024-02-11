part of '../about_us_features_item_widget.dart';

class _AboutUsFeaturesItemWidgetWeb extends StatelessWidget {
  const _AboutUsFeaturesItemWidgetWeb(
      {super.key,
      required this.isLtR,
      required this.title,
      required this.description,
      required this.imagePath,
      required this.shapePath,
      required this.titleColor});
  final bool isLtR;
  final String title;
  final String description;
  final String imagePath;
  final String shapePath;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isLtR ? TextDirection.ltr : TextDirection.rtl,
      child: Row(
        children: [
          Expanded(
            child: AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              delay: Duration(milliseconds: isLtR ? 250 : 500),
              child: Stack(
                alignment: isLtR ? Alignment.bottomLeft : Alignment.bottomRight,
                children: [
                  Positioned(
                    bottom: 0,
                    left: isLtR ? 75 : null,
                    right: !isLtR ? 100 : null,
                    child: SvgPicture.asset(shapePath),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: isLtR ? getIt<SizeConfig>().padding : 32.0,
                      right: !isLtR ? getIt<SizeConfig>().padding : 32.0,
                      bottom: 75,
                    ),
                    child: SizedBox(
                      height: .28.w(context),
                      width: double.infinity,
                      child: ParallaxStack(
                        layers: [
                          ParallaxLayer(
                            yRotation: 0.10,
                            xRotation: 0.10,
                            xOffset: 10,
                            yOffset: 10,
                            child: Center(
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
              delay: Duration(milliseconds: isLtR ? 500 : 250),
              child: Padding(
                padding: EdgeInsets.only(
                    right: getIt<SizeConfig>().padding + (isLtR ? 80 : 0),
                    left: getIt<SizeConfig>().padding + (!isLtR ? 80 : 0),
                    bottom: 75),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: typography.h4Title.copyWith(color: titleColor),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      description,
                      style: typography.bodyText3
                          .copyWith(color: colorPalette.gray1),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
