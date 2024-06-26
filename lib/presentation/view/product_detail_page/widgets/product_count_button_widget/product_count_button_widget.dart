import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ProductCountButtonWidget extends StatefulWidget {
  const ProductCountButtonWidget(
      {super.key,
      required this.icon,
      required this.onTap,
      this.isDeactive = false,
      this.width,
      this.iconSize,
      this.height});
  final IconData icon;
  final VoidCallback? onTap;
  final bool isDeactive;
  final double? width;
  final double? height;
  final double? iconSize;

  @override
  State<ProductCountButtonWidget> createState() =>
      _ProductCountButtonWidgetState();
}

class _ProductCountButtonWidgetState extends State<ProductCountButtonWidget> {
  bool isTapDown = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isDeactive ? null : widget.onTap,
      onTapDown: _onTapDown(),
      onTapUp: _onTapUp(),
      onTapCancel: _onTapCancel(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        height: widget.height ?? 70,
        width: _buttonWidth(context),
        decoration: BoxDecoration(color: colorPalette.gray6),
        child: Center(
          child: Icon(
            widget.icon,
            color: _iconColor(),
            size: widget.iconSize ?? 27,
          ),
        ),
      ),
    );
  }

  double _buttonWidth(BuildContext context) {
    return isTapDown ? 65 : widget.width ?? 60;
  }

  Function(TapDownDetails)? _onTapDown() {
    return widget.isDeactive
        ? null
        : (_) {
            setState(() {
              isTapDown = true;
            });
          };
  }

  Function(TapUpDetails)? _onTapUp() {
    return widget.isDeactive
        ? null
        : (_) {
            setState(() {
              isTapDown = false;
            });
          };
  }

  Function()? _onTapCancel() {
    return widget.isDeactive
        ? null
        : () {
            setState(() {
              isTapDown = false;
            });
          };
  }

  Color _iconColor() {
    return widget.isDeactive ? colorPalette.gray4 : colorPalette.darkPrimary;
  }
}
