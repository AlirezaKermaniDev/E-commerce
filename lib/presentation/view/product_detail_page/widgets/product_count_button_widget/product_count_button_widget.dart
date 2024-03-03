import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ProductCountButtonWidget extends StatefulWidget {
  const ProductCountButtonWidget(
      {super.key,
      required this.icon,
      required this.onTap,
      this.isDeactive = false});
  final IconData icon;
  final VoidCallback? onTap;
  final bool isDeactive;

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
        height: 70,
        width: isTapDown ? 65 : 70,
        decoration: BoxDecoration(color: colorPalette.gray6),
        child: Center(
          child: Icon(
            widget.icon,
            color: _iconColor(),
            size: 27,
          ),
        ),
      ),
    );
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