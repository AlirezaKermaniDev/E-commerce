import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class OfferItemWidget extends StatelessWidget {
  const OfferItemWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: _checkBoxSize(context),
          width: _checkBoxSize(context),
          decoration: BoxDecoration(
              color: colorPalette.accent2, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.done,
              color: colorPalette.primary,
              size: context.isPhone ? 15 : 20,
            ),
          ),
        ),
         SizedBox(
          width: context.isPhone ? 8 : 16,
        ),
        Text(
          title,
          style: typography.bodyText2.copyWith(color: colorPalette.gray1),
        ),
      ],
    );
  }

  double _checkBoxSize(BuildContext context) => context.isPhone ? 23 : 30;
}
