import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class AnimatorTextWidget extends StatelessWidget {
  const AnimatorTextWidget(this.text,
      {super.key,
      this.incomingEffect,
      this.outgoingEffect,
      this.atRestEffect,
      this.maxLines,
      this.textAlign,
      this.style,
      this.initialDelay,
      this.characterDelay,
      this.spaceDelay});

  final String text;
  final WidgetTransitionEffects? incomingEffect;
  final WidgetTransitionEffects? outgoingEffect;
  final WidgetRestingEffects? atRestEffect;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextStyle? style;
  final Duration? initialDelay;
  final Duration? characterDelay;
  final Duration? spaceDelay;

  @override
  Widget build(BuildContext context) {
    if (!context.isLtrLocale) {
      return Text(
        text,
        maxLines: maxLines,
        style: style,
        textAlign: textAlign,
      );
    }
    return TextAnimator(
      text,
      maxLines: maxLines,
      style: style,
      initialDelay: initialDelay,
      spaceDelay: spaceDelay,
      incomingEffect: incomingEffect,
      textAlign: textAlign,
      characterDelay: characterDelay,
      atRestEffect: atRestEffect,
      outgoingEffect: outgoingEffect,
    );
  }
}
