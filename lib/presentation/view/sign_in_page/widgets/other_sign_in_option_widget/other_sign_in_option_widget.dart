import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class OtherSignInOptionWidget extends StatelessWidget {
  const OtherSignInOptionWidget({
    super.key,
    required this.icon,
    this.withShadow = false,
  });
  final Widget icon;
  final bool withShadow;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _OtherSignInOptionWidgetWeb(
        icon: icon,
        withShadow: withShadow,
      ),
      tablet: _OtherSignInOptionWidgetWeb(
        icon: icon,
        withShadow: withShadow,
      ),
      phone: const _OtherSignInOptionWidgetPhone(),
    );
  }
}
