import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: BoxConstraints(maxWidth: getIt<SizeConfig>().maxWidth),
      child: child,
    ));
  }
}
