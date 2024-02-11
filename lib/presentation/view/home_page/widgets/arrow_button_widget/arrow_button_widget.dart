import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ArrowButtonWidget extends StatefulWidget {
  const ArrowButtonWidget({
    super.key,
    required this.isDisable,
    required this.iconData,
    required this.onTap,
  });
  final bool isDisable;
  final IconData iconData;
  final VoidCallback onTap;

  @override
  State<ArrowButtonWidget> createState() => _ArrowButtonWidgetState();
}

class _ArrowButtonWidgetState extends State<ArrowButtonWidget> {
  bool _isHover = false;
  bool _isOnHold = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.isDisable ? null : widget.onTap,
      onHover: _onHover,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: widget.isDisable ? .2 : 1,
        child: AnimatedScale(
          duration: const Duration(milliseconds: 50),
          scale: scaleValue(),
          child: WidgetAnimator(
              incomingEffect: WidgetTransitionEffects.incomingScaleUp(
                  delay: const Duration(milliseconds: 1000)),
              child: _ChangeBannerImageArrowWidget(icon: widget.iconData)),
        ),
      ),
    );
  }

  void _onTapUp(_) async {
    await Future.delayed(const Duration(milliseconds: 50));
    setState(() {
      _isOnHold = false;
    });
  }

  void _onTapDown(_) {
    setState(() {
      _isOnHold = true;
    });
  }

  void _onHover(value) {
    setState(() {
      _isHover = value;
    });
  }

  double scaleValue() {
    if (!widget.isDisable && _isHover & !_isOnHold) {
      return 1.2;
    } else {
      return 1;
    }
  }
}

class _ChangeBannerImageArrowWidget extends StatelessWidget {
  const _ChangeBannerImageArrowWidget({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: colorPalette.accent1, width: 1.5)),
      child: Center(
        child: Icon(
          icon,
          size: 21,
          color: colorPalette.accent1,
        ),
      ),
    );
  }
}
