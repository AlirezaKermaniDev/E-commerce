part of '../accessories_item_widget.dart';

class _AccessoriesItemWidgetWeb extends StatelessWidget {
  const _AccessoriesItemWidgetWeb({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.color,
  });
  final String title;
  final String description;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(_shape1()),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 150, bottom: 50),
            child: SvgPicture.asset(_shape2()),
          ),
        ),
        SizedBox(
          height: 450,
          child: Row(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100, bottom: 30),
                      child: SvgPicture.asset(AssetHandler.shape5),
                    ),
                  ),
                  Center(
                    child: AnimatorWidget(
                        withFadeTransition: true,
                        delay: const Duration(milliseconds: 50),
                        scaleTransition: Tween<double>(begin: .9, end: 1),
                        child: Image.asset(imagePath)),
                  ),
                ],
              )),
              Expanded(
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
                        style: typography.bodyText2.copyWith(color: color),
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
                        title,
                        style: typography.h2Title
                            .copyWith(color: colorPalette.primary),
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
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
                        description,
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
                        color: color,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: getIt<SizeConfig>().padding,
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _shape2() {
    return color == colorPalette.darkPrimary
        ? AssetHandler.shape1
        : AssetHandler.shape2;
  }

  String _shape1() {
    return color == colorPalette.darkPrimary
        ? AssetHandler.shape3
        : AssetHandler.shape4;
  }
}
