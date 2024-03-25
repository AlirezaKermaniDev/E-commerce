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
        _shape1Widget(color),
        _shape2Widget(color),
        SizedBox(
          height: 450,
          child: Row(
            children: [
              Expanded(
                  child: Stack(
                children: [
                  _shape3Widget(),
                  Center(
                    child: _animatorWidgetBuilder(
                      millisecondDelay: 50,
                      withScale: true,
                      child: Image.asset(imagePath),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: _AccessoriesDetailWidget(
                  color: color,
                  title: title,
                  description: description,
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
}
