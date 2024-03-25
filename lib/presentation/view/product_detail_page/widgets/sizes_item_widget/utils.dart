part of 'sizes_item_widget.dart';

Color _cardColor(bool isActive) {
  return isActive ? colorPalette.darkPrimary : colorPalette.primary;
}

Color _textColor(bool isActive, bool isAvailable) {
  return isAvailable
      ? isActive
          ? colorPalette.primary
          : colorPalette.darkPrimary
      : colorPalette.gray5;
}

Color _borderColor(bool isActive, bool isAvailable, bool isHover) {
  return isActive
      ? colorPalette.darkPrimary
      : isHover && isAvailable
          ? colorPalette.darkPrimary
          : colorPalette.gray5;
}

Function()? onTap(BuildContext context, bool isAvailable, String value) {
  return isAvailable
      ? () {
          context.read<ProductDetailBloc>().add(
              ProductDetailEvent.changeSelectedSizes(
                  size: double.parse(value)));
        }
      : null;
}
