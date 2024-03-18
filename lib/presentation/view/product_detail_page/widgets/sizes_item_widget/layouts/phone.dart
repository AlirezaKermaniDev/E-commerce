part of '../sizes_item_widget.dart';

class _SizesItemWidgetPhone extends StatefulWidget {
  const _SizesItemWidgetPhone({
    super.key,
    required this.value,
    required this.index,
    required this.isAvailable,
    required this.isActive,
  });

  final String value;
  final int index;
  final bool isAvailable;
  final bool isActive;

  @override
  State<_SizesItemWidgetPhone> createState() => _SizesItemWidgetPhoneState();
}

class _SizesItemWidgetPhoneState extends State<_SizesItemWidgetPhone> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      delay: Duration(milliseconds: 900 + (widget.index * 150)),
      slideTransition:
          Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
      child: InkWell(
        onTap: onTap(context),
        onHover: _onHover,
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: _cardColor(),
            border: Border.all(
              color: _borderColor(),
              width: 1,
            ),
          ),
          child: Center(
            child: Text(
              widget.value,
              style: typography.bodyText2.copyWith(
                color: _textColor(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Function()? onTap(BuildContext context) {
    return widget.isAvailable
        ? () {
            context.read<ProductDetailBloc>().add(
                ProductDetailEvent.changeSelectedSizes(
                    size: double.parse(widget.value)));
          }
        : null;
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }

  Color _cardColor() {
    return widget.isActive ? colorPalette.darkPrimary : colorPalette.primary;
  }

  Color _textColor() {
    return widget.isAvailable
        ? widget.isActive
            ? colorPalette.primary
            : colorPalette.darkPrimary
        : colorPalette.gray5;
  }

  Color _borderColor() {
    return widget.isActive
        ? colorPalette.darkPrimary
        : _isHover && widget.isAvailable
            ? colorPalette.darkPrimary
            : colorPalette.gray5;
  }
}
