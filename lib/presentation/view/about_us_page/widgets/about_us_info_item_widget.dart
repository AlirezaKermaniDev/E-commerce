import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutUsInfoItemsWidget extends StatelessWidget {
  const AboutUsInfoItemsWidget({
    super.key,
    required this.icon,
    required this.value,
    required this.lable,
    required this.isPhone,
  });

  final String icon;
  final String value;
  final String lable;
  final bool isPhone;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isPhone ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        AnimatorWidget(
          withFadeTransition: true,
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .8), end: Offset.zero),
          delay: const Duration(milliseconds: 250),
          child: SvgPicture.asset(icon),
        ),
        const SizedBox(
          height: 8,
        ),
        AnimatorWidget(
          withFadeTransition: true,
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .8), end: Offset.zero),
          delay: const Duration(milliseconds: 500),
          child: Text(
            value,
            style: isPhone ? typography.h4Title.copyWith(color: colorPalette.accent2): typography.h2Title.copyWith(color: colorPalette.accent2),
          ),
        ),
        AnimatorWidget(
          withFadeTransition: true,
          slideTransition:
              Tween<Offset>(begin: const Offset(0, .8), end: Offset.zero),
          delay: const Duration(milliseconds: 750),
          child: Text(
            lable,
            style: typography.bodyText3.copyWith(color: colorPalette.gray3),
          ),
        ),
      ],
    );
  }
}
