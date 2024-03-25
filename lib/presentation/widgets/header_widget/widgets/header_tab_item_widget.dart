import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class HeaderTabItemWidget extends StatelessWidget {
  const HeaderTabItemWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.forgroundColor,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  final Color? forgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: typography.bodyText1.copyWith(
                color: isSelected ? colorPalette.accent4 : forgroundColor),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        if (isSelected)
          Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  color: colorPalette.accent4, shape: BoxShape.circle))
        else
          const SizedBox(
            height: 8,
            width: 8,
          )
      ],
    );
  }
}
