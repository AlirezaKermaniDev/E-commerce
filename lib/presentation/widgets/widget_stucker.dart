import 'package:ecommerce_app/core/size_config.dart';
import 'package:flutter/material.dart';

class WidgetStucker extends StatefulWidget {
  const WidgetStucker(
      {super.key, required this.controller, required this.builder});

  final WidgetStuckerController controller;
  final Widget Function() builder;

  @override
  State<WidgetStucker> createState() => _WidgetStuckerState();
}

class _WidgetStuckerState extends State<WidgetStucker> {
  void _afterLayout(_) {
    widget.controller.scrollController.addListener(
      () {
        if (!context.isPhone) {
          _calculateFilterWidgetPosition();
        }
      },
    );
  }

  void _calculateFilterWidgetPosition() {
    final controller = widget.controller;
    final RenderBox renderBox = controller.stickWidgetKey.currentContext
        ?.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final double startY = offset.dy;
    final double totalGridViewHeight =
        controller.scrollableWidgetKey.currentContext!.size!.height - 565;

    setState(() {
      widget.controller.isStuckTop =
          startY <= widget.controller.stickWidgetVerticalyPadding;
      controller.isStuckBottom =
          controller.scrollController.offset >= totalGridViewHeight;
      controller.stickWidgetTopOffset =
          (totalGridViewHeight - controller.scrollController.offset) + 45;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder();
  }
}

class WidgetStuckerController {
  bool isStuckTop = false;
  bool isStuckBottom = false;
  final ScrollController scrollController = ScrollController();
  final GlobalKey stickWidgetKey = GlobalKey();
  final GlobalKey scrollableWidgetKey = GlobalKey();
  final double stickWidgetVerticalyPadding;
  double stickWidgetTopOffset = 0;

  WidgetStuckerController({required this.stickWidgetVerticalyPadding});
}
