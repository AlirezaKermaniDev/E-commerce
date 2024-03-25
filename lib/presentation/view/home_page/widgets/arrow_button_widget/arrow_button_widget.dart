import 'package:ecommerce_app/presentation/view/home_page/widgets/change_banner_image_arrow_widget/change_banner_image_arrow_widget.dart';
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
            child: ChangeBannerImageArrowWidget(icon: widget.iconData),
          ),
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
