part of '../accessories_item_widget.dart';

class _AccessoriesItemWidgetPhone extends StatelessWidget {
  const _AccessoriesItemWidgetPhone({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.color,
    this.backgroundColor,
  });
  final String title;
  final String description;
  final String imagePath;
  final Color color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
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
              SizedBox(
                width: 244,
                child: _AccessoriesDetailWidget(
                  color: color,
                  title: title,
                  description: description,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
        _shape1Widget(color),
      ],
    );
  }
}
