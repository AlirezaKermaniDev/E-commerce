import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_visibility_detector/widget_visibility_detector.dart';

class AnimatorWidget extends StatefulWidget {
  const AnimatorWidget(
      {super.key,
      required this.child,
      this.scaleTransition,
      this.delay,
      this.fadeTransition,
      this.slideTransition,
      this.withVisibilityDetector = true,
      this.rotateTrasition,
      this.withFadeTransition = false});

  final Widget child;
  final Duration? delay;
  final bool withFadeTransition;
  final bool withVisibilityDetector;
  final Tween<double>? scaleTransition;
  final Tween<double>? fadeTransition;
  final Tween<Offset>? slideTransition;
  final Tween<double>? rotateTrasition;

  @override
  State<AnimatorWidget> createState() => _AnimatorWidgetState();
}

class _AnimatorWidgetState extends State<AnimatorWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  Timer? _time;

  @override
  void initState() {
    super.initState();
    if (!widget.withVisibilityDetector) {
      _time = Timer(widget.delay ?? Duration.zero, () {
        if (mounted) {
          animationController.forward();
        }
      });
    }
  }

  @override
  void dispose() {
    _time?.cancel();
    animationController.stop();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetVisibilityDetector(
      onAppear: () {
        if (widget.withVisibilityDetector) {
          _time = Timer(widget.delay ?? Duration.zero, () {
            if (mounted) {
              animationController.forward();
            }
          });
        }
      },
      child: FadeTransition(
        opacity: _fadeTransition(),
        child: RotationTransition(
          turns: _rotateTransition(),
          child: ScaleTransition(
            scale: _scaleTransition(),
            child: SlideTransition(
              position: _slideTransition(),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }

  Animation<double> _scaleTransition() {
    return widget.scaleTransition == null
        ? Tween<double>(begin: 1, end: 1).animate(animationController)
        : widget.scaleTransition!.animate(animationController);
  }

  Animation<double> _rotateTransition() {
    return widget.rotateTrasition == null
        ? Tween<double>(begin: 0, end: 0).animate(animationController)
        : widget.rotateTrasition!.animate(animationController);
  }

  Animation<double> _fadeTransition() {
    return widget.fadeTransition == null
        ? Tween<double>(begin: widget.withFadeTransition ? 0 : 1, end: 1)
            .animate(animationController)
        : widget.fadeTransition!.animate(animationController);
  }

  Animation<Offset> _slideTransition() {
    return widget.slideTransition == null
        ? Tween<Offset>(begin: Offset.zero, end: Offset.zero)
            .animate(animationController)
        : widget.slideTransition!.animate(animationController);
  }
}
