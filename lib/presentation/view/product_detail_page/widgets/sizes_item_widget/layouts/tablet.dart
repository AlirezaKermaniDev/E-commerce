part of '../sizes_item_widget.dart';

class _SizesItemWidgetTablet extends StatefulWidget {
  const _SizesItemWidgetTablet({
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
  State<_SizesItemWidgetTablet> createState() => _SizesItemWidgetTabletState();
}

class _SizesItemWidgetTabletState extends State<_SizesItemWidgetTablet> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatorWidget(
      withFadeTransition: true,
      delay: Duration(milliseconds: 900 + (widget.index * 150)),
      slideTransition:
          Tween<Offset>(begin: const Offset(0, .3), end: Offset.zero),
      child: InkWell(
        onTap: onTap(
          context,
          widget.isAvailable,
          widget.value,
        ),
        onHover: _onHover,
        hoverColor: Colors.transparent,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: _cardColor(widget.isActive),
            border: Border.all(
              color: _borderColor(
                widget.isActive,
                widget.isAvailable,
                _isHover,
              ),
              width: 1.5,
            ),
          ),
          child: Center(
            child: Text(
              widget.value,
              style: typography.bodyText2.copyWith(
                color: _textColor(
                  widget.isActive,
                  widget.isAvailable,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }
}
