part of '../filter_items_widget.dart';

class _FilterItemsWidgetWeb extends StatefulWidget {
  const _FilterItemsWidgetWeb({
    super.key,
    required this.title,
    required this.child,
    required this.isActive,
  });
  final String title;
  final Widget child;
  final bool isActive;

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
      value: 1);

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      controller: ExpandableController(initialExpanded: true)
        ..addListener(() {
          if (animationController.isCompleted) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        }),
      theme: const ExpandableThemeData(hasIcon: false),
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: typography.bodyText2.copyWith(color: colorPalette.gray2),
          ),
          RotationTransition(
            turns:
                Tween<double>(begin: 0, end: .125).animate(animationController),
            child: Icon(
              Icons.add_rounded,
              color: colorPalette.gray1,
            ),
          )
        ],
      ),
      collapsed: const SizedBox(),
      expanded: widget.child,
    );
  }
}
