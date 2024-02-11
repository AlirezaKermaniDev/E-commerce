import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class ToolTipWidget extends StatefulWidget {
  const ToolTipWidget({
    super.key,
    required this.content,
    this.padding,
    this.preferredDirection,
  });

  final Widget content;
  final EdgeInsets? padding;
  final AxisDirection? preferredDirection;

  @override
  State<ToolTipWidget> createState() => _ToolTipWidgetState();
}

class _ToolTipWidgetState extends State<ToolTipWidget> {
  late JustTheController justTheController;
  @override
  void initState() {
    super.initState();
    justTheController = JustTheController();
    Future.delayed(const Duration(milliseconds: 400)).then((value) {
      justTheController.showTooltip(immediately: false, autoClose: true);
    });
  }

  bool isShowing = false;
  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
      isModal: false,
      controller: justTheController,
      tailLength: 0,
      fadeInDuration: const Duration(milliseconds: 500),
      fadeOutDuration: const Duration(milliseconds: 500),
      showDuration: const Duration(seconds: 5),
      shadow: const Shadow(color: Colors.transparent),
      onShow: () {
        setState(() {
          isShowing = true;
        });
      },
      onDismiss: () {
        setState(() {
          isShowing = false;
        });
      },
      backgroundColor: Colors.transparent,
      preferredDirection: widget.preferredDirection ?? AxisDirection.up,
      content: Padding(
        padding: widget.padding ?? const EdgeInsets.all(8.0),
        child: widget.content,
      ),
      child: isShowing
          ? Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, gradient: colorPalette.gradient2),
              child: Center(
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: colorPalette.primary, shape: BoxShape.circle),
                ),
              ),
            )
          : WidgetAnimator(
              atRestEffect: WidgetRestingEffects.wave(
                  duration: const Duration(milliseconds: 1700),
                  effectStrength: .3),
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, gradient: colorPalette.gradient2),
                child: Center(
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: colorPalette.primary, shape: BoxShape.circle),
                  ),
                ),
              ),
            ),
    );
  }
}
