part of '../about_us_features_item_widget.dart';

class _AboutUsFeaturesItemWidgetPhone extends StatelessWidget {
  const _AboutUsFeaturesItemWidgetPhone(
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
    print(1.w(context));
    return Directionality(
      textDirection: isLtR ? TextDirection.ltr : TextDirection.rtl,
      child: Column(
        children: [
          AnimatorWidget(
            withFadeTransition: true,
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
            delay: Duration(milliseconds: isLtR ? 250 : 500),
            child: SizedBox(
              height: 270,
              width: double.infinity,
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    yRotation: 0.10,
                    xRotation: 0.10,
                    xOffset: 10,
                    yOffset: 10,
                    child: SizedBox(
                      height: 250,
                      width: 1.w(context),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatorWidget(
            withFadeTransition: true,
            slideTransition:
                Tween<Offset>(begin: const Offset(0, .1), end: Offset.zero),
            delay: Duration(milliseconds: isLtR ? 500 : 250),
            child: Column(
              crossAxisAlignment:
                  isLtR ? CrossAxisAlignment.start : CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: typography.h5Title.copyWith(color: titleColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  description,
                  style:
                      typography.bodyText2.copyWith(color: colorPalette.gray2),
                  textAlign: isLtR ? TextAlign.start : TextAlign.end,
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
