import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ScrollbarWidget extends StatelessWidget {
  const ScrollbarWidget(
      {super.key,
      required this.scrollController,
      required this.child,
      this.padding});

  final ScrollController scrollController;
  final Widget child;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thickness: 4.5,
      controller: scrollController,
      thumbColor: colorPalette.accent2,
      trackColor: colorPalette.gray5,
      trackVisibility: true,
      thumbVisibility: true,
      trackBorderColor: Colors.transparent,
      radius: const Radius.circular(8),
      trackRadius: const Radius.circular(8),
      crossAxisMargin: 0,
      padding: padding ??
          EdgeInsets.only(
            left: 0.25.w(context),
            right: 0.25.w(context),
          ),
      child: child,
    );
  }
}
