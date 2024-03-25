part of 'popular_brands_item_widget.dart';

double _itemWidth(BuildContext context) =>
    context.isPhone ? 220 : (.8.w(context) - 60) / 4;
bool _isHover = false;
const Color _inkWellHoverColor = Colors.transparent;

double _backgroundWidth(BuildContext context) =>
    (_isHover ? _itemWidth(context) + 100 : _itemWidth(context));

void _onHover(value, setState) {
  setState(() {
    _isHover = value;
  });
}

Color _itemsBackgroundColor() {
  return getIt<LocalStorage>().getTheme().themeMode == ThemeMode.dark
      ? colorPalette.darkPrimary
      : colorPalette.primary;
}
