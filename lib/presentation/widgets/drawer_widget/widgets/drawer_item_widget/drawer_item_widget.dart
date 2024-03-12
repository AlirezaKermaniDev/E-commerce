import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.title,
    required this.onTap,
    required this.isActive,
  });
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        height: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    color: isActive ? colorPalette.accent4 : colorPalette.gray4,
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
        ),
      ),
    );
  }
}
