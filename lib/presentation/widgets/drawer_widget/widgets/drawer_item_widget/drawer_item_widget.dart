import 'package:ecommerce_app/injection/injection.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.badgeText,
    this.valueText,
    this.expanded,
    this.switchValue,
    required this.isActive,
  });
  final String title;
  final VoidCallback onTap;
  final bool isActive;
  final bool? switchValue;
  final Widget? expanded;
  final String? badgeText;
  final String? valueText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: expanded == null
          ? _DrawerBodyWidget(
              isActive: isActive,
              title: title,
              valueText: valueText,
              switchValue: switchValue,
              onTap: onTap,
              badgeText: badgeText,
            )
          : ExpandablePanel(
              theme: const ExpandableThemeData(hasIcon: false),
              header: _DrawerBodyWidget(
                isActive: isActive,
                title: title,
                valueText: valueText,
                switchValue: switchValue,
                onTap: onTap,
                badgeText: badgeText,
              ),
              collapsed: const SizedBox(),
              expanded: expanded!,
            ),
    );
  }
}

class _DrawerBodyWidget extends StatelessWidget {
  const _DrawerBodyWidget({
    super.key,
    required this.isActive,
    required this.title,
    required this.valueText,
    required this.switchValue,
    required this.onTap,
    required this.badgeText,
  });

  final bool isActive;
  final String title;
  final String? valueText;
  final bool? switchValue;
  final VoidCallback onTap;
  final String? badgeText;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                      color:
                          isActive ? colorPalette.accent4 : colorPalette.gray4,
                      shape: BoxShape.circle),
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  title,
                  style: typography.bodyText1.copyWith(
                      color: isActive
                          ? colorPalette.accent4
                          : colorPalette.darkPrimary.withOpacity(.8)),
                ),
              ],
            ),
            if (valueText != null)
              Text(
                valueText!,
                style: typography.bodyText2.copyWith(color: colorPalette.gray3),
              ),
            if (switchValue != null)
              Transform.scale(
                scale: .9,
                child: SizedBox(
                  width: 40,
                  child: Switch.adaptive(
                    value: switchValue ?? false,
                    onChanged: (_) {
                      onTap();
                    },
                    activeColor: colorPalette.accent4,
                  ),
                ),
              ),
            if (badgeText != null)
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: colorPalette.accent4),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1.5),
                    child: FittedBox(
                      child: Text(
                        badgeText!,
                        style: typography.bodyText2
                            .copyWith(color: colorPalette.primary),
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
