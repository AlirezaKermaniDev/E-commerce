part of '../button_widget.dart';

class _ButtonWidgetWeb extends StatefulWidget {
  const _ButtonWidgetWeb(
      {super.key,
      required this.title,
      required this.color,
      this.height,
      this.shadowColor,
      this.width});

  final String title;
  final Color color;
  final Color? shadowColor;
  final double? width;
  final double? height;

  @override
  State<_ButtonWidgetWeb> createState() => _ButtonWidgetWebState();
}

class _ButtonWidgetWebState extends State<_ButtonWidgetWeb> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: _onHover,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeIn,
        width: widget.width ?? 180,
        height: widget.height ?? 46,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(4),
          boxShadow: _boxShadow(),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: typography.bodyText2.copyWith(color: colorPalette.primary),
          ),
        ),
      ),
    );
  }

  List<BoxShadow> _boxShadow() {
    return _isHover
        ? [
            BoxShadow(
                color: widget.shadowColor ?? widget.color,
                blurRadius: 8,
                spreadRadius: -8,
                offset: const Offset(0, 8))
          ]
        : [
            BoxShadow(
                color: widget.shadowColor ?? widget.color,
                blurRadius: 19,
                spreadRadius: -20,
                offset: const Offset(0, 22))
          ];
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }
}
