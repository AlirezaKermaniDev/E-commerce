part of '../arrow_title_button_widget.dart';

class _ArrowTitleButtonWidgetWeb extends StatefulWidget {
  const _ArrowTitleButtonWidgetWeb(
      {super.key,
      required this.title,
      this.isForwardArrow = true,
      required this.onTap,
      this.color,
      this.iconSize,
      this.mainAxisAlignment,
      this.icon});

  final String title;
  final bool isForwardArrow;
  final VoidCallback onTap;
  final Color? color;
  final IconData? icon;
  final double? iconSize;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  State<_ArrowTitleButtonWidgetWeb> createState() =>
      _ArrowTitleButtonWidgetWebState();
}

class _ArrowTitleButtonWidgetWebState
    extends State<_ArrowTitleButtonWidgetWeb> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      hoverColor: Colors.transparent,
      onHover: _onHover,
      child: Ink(
        height: 45,
        child: Row(
          mainAxisAlignment:
              widget.mainAxisAlignment ?? MainAxisAlignment.start,
          children: [
            if (!widget.isForwardArrow)
              _arrowWidgetBuilder(
                  widget.icon ?? Icons.arrow_forward_ios_rounded,
                  widget.iconSize ?? 17),
            AnimatedPadding(
              duration: const Duration(milliseconds: 150),
              curve: Curves.easeInOutBack,
              padding: EdgeInsets.symmetric(
                horizontal: _isHover ? 20 : 8,
              ),
              child: Text(
                widget.title,
                style: typography.bodyText1
                    .copyWith(color: widget.color ?? colorPalette.accent4),
              ),
            ),
            if (widget.isForwardArrow)
              _arrowWidgetBuilder(
                  widget.icon ?? Icons.arrow_forward_ios_rounded,
                  widget.iconSize ?? 17),
          ],
        ),
      ),
    );
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }

  Widget _arrowWidgetBuilder(IconData iconData, double iconSize) {
    return Padding(
      padding: EdgeInsets.only(bottom: iconSize <= 18 ? 2 : 0),
      child: Icon(iconData,
          size: iconSize, color: widget.color ?? colorPalette.accent4),
    );
  }
}
