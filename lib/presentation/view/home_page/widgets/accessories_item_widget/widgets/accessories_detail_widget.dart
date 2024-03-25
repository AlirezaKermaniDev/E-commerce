part of '../accessories_item_widget.dart';

class _AccessoriesDetailWidget extends StatelessWidget {
  const _AccessoriesDetailWidget({
    super.key,
    required this.color,
    required this.title,
    required this.description,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final Color color;
  final String title;
  final String description;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _animatorWidgetBuilder(
          millisecondDelay: 50,
          child: Text(
            context.locale.accesories,
            style: typography.bodyText2.copyWith(color: color),
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        _animatorWidgetBuilder(
          millisecondDelay: 100,
          child: Text(
            title,
            style: _titleStyle(context),
            maxLines: 1,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        _animatorWidgetBuilder(
          millisecondDelay: 150,
          child: Text(
            description,
            style: typography.bodyText2.copyWith(color: colorPalette.primary),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        _animatorWidgetBuilder(
          millisecondDelay: 200,
          child: ButtonWidget(
            title: context.locale.shopNow,
            color: color,
          ),
        )
      ],
    );
  }

  TextStyle _titleStyle(BuildContext context) {
    return context.isPhone
        ? typography.h4Title.copyWith(color: colorPalette.primary)
        : typography.h2Title.copyWith(color: colorPalette.primary);
  }
}
