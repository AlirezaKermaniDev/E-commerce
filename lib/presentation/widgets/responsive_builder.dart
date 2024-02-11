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
    if (MediaQuery.sizeOf(context).width >= 1400) {
      return web;
    } else if (MediaQuery.sizeOf(context).width >= 700) {
      return tablet;
    } else {
      return phone;
    }
  }
}
