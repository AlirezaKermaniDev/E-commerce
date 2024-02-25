part of '../filter_items_widget.dart';

class _FilterItemsWidgetWeb extends StatefulWidget {
  const _FilterItemsWidgetWeb({
    super.key,
    required this.title,
    required this.child,
    this.initialExpanded = true,
    this.headerHeight,
    this.iconSize,
    this.color,
    this.textStyle,
  });
  final String title;
  final Widget child;
  final bool initialExpanded;
  final double? headerHeight;
  final double? iconSize;
  final Color? color;
  final TextStyle? textStyle;

  @override
  State<_FilterItemsWidgetWeb> createState() => _FilterItemsWidgetWebState();
}

class _FilterItemsWidgetWebState extends State<_FilterItemsWidgetWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
      value: widget.initialExpanded ? 1 : 0);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      controller: ExpandableController(initialExpanded: widget.initialExpanded)
        ..addListener(() {
          if (animationController.isCompleted) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        }),
      theme: const ExpandableThemeData(hasIcon: false),
      header: Ink(
        height: widget.headerHeight,
        color: colorPalette.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: widget.textStyle ??
                  typography.bodyText2
                      .copyWith(color: widget.color ?? colorPalette.gray2),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0, end: .125)
                  .animate(animationController),
              child: Icon(
                Icons.add_rounded,
                size: widget.iconSize,
                color: widget.color ?? colorPalette.gray1,
              ),
            )
          ],
        ),
      ),
      collapsed: const SizedBox(),
      expanded: widget.child,
    );
  }
}
