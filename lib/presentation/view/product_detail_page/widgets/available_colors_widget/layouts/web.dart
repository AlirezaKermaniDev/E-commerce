part of '../available_colors_widget.dart';

class _AvailableColorsWidgetWeb extends StatelessWidget {
  const _AvailableColorsWidgetWeb({
    super.key,
    required this.colors,
  });

  final List<int> colors;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.locale.availableIn,
          style: typography.bodyText4.copyWith(color: colorPalette.gray2),
        ),
        const SizedBox(
          width: 8,
        ),
        ...colors
            .map((color) => AvailableColorItemWidget(color: color))
            .toList()
      ],
    );
  }
}

class AvailableColorItemWidget extends StatelessWidget {
  const AvailableColorItemWidget({
    super.key,
    required this.color,
  });
  final int color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Container(
        height: 21,
        width: 21,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Color(color)),
      ),
    );
  }
}
