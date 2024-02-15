part of '../filter_items_button_widget.dart';

class _FilterItemsButtonWidgetWeb extends StatelessWidget {
  const _FilterItemsButtonWidgetWeb({
    super.key,
    required this.title,
    required this.onTap,
    required this.value,
    required this.groupValue,
    this.color,
  });

  final String title;
  final Object value;
  final List<Object> groupValue;
  final VoidCallback onTap;
  final int? color;

  bool _isActive() {
    return groupValue.contains(value);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      onHover: (value) {
        // setState(() {
        //   _isHover = value;
        // });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: 40,
        decoration: BoxDecoration(
          color: _isActive() ? colorPalette.accent4 : colorPalette.gray6,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(
          child: color != null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(
                          color!,
                        ),
                        borderRadius: BorderRadius.circular(2)),
                  ),
                )
              : Text(
                  title,
                  style: typography.bodyText2.copyWith(
                    fontWeight: FontWeight.normal,
                    color: _isActive()
                        ? colorPalette.primary
                        : colorPalette.darkPrimary,
                  ),
                ),
        ),
      ),
    );
  }
}
