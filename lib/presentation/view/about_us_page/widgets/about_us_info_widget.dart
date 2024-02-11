import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutUsInfoWidget extends StatelessWidget {
  const AboutUsInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.w(context),
      padding: const EdgeInsets.only(top: 50, bottom: 60),
      color: colorPalette.darkPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AboutUsInfoItemsWidget(
            icon: CustomIcons.founded,
            value: "2014",
            lable: context.locale.founded,
          ),
          AboutUsInfoItemsWidget(
            icon: CustomIcons.clients,
            value: "2000+",
            lable: context.locale.clients,
          ),
          AboutUsInfoItemsWidget(
            icon: CustomIcons.countries,
            value: "20",
            lable: context.locale.countriesDelivered,
          ),
        ],
      ),
    );
  }
}

class AboutUsInfoItemsWidget extends StatelessWidget {
  const AboutUsInfoItemsWidget({
    super.key,
    required this.icon,
    required this.value,
    required this.lable,
  });

  final String icon;
  final String value;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            style: typography.h2Title.copyWith(color: colorPalette.accent2),
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
