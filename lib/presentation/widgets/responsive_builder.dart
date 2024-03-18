import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget web;
  final Widget tablet;
  final Widget phone;
  const ResponsiveBuilder(
      {super.key,
      required this.web,
      required this.tablet,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    if (_isWeb(context)) {
      return web;
    } else if (_isTablet(context)) {
      return tablet;
    } else {
      return phone;
    }
  }

  bool _isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width >=
        getIt<SizeConfig>().tabletTriggerSize;
  }

  bool _isWeb(BuildContext context) {
    return MediaQuery.sizeOf(context).width >=
        getIt<SizeConfig>().webTriggerSize;
  }
}
