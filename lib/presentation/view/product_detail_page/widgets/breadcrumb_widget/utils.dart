part of 'breadcrumb_widget.dart';

TextStyle _style(bool isSelected, bool isBold, Color? unSelectedColor) {
  if (isBold) {
    return typography.h5Title.copyWith(
      color: _itemColor(isSelected, unSelectedColor),
    );
  } else {
    return typography.bodyText2.copyWith(
      color: _itemColor(isSelected, unSelectedColor),
    );
  }
}

double _verticalPadding(BuildContext context) {
  if (context.isPhone) {
    return 4;
  } else {
    if (context.isTablet) {
      return 45;
    } else {
      return 60;
    }
  }
}

Color? _itemColor(bool isSelected, Color? unSelectedColor) {
  if (isSelected) {
    return null;
  } else {
    return unSelectedColor ?? colorPalette.gray2;
  }
}

bool isFirstItem(int index) => index != 0;

bool isLastItem(int index, List<String> items) => index != items.length - 1;
