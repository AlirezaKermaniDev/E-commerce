import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SizeConfig {
  late double padding;

  setSizeConfigs(BuildContext context) {
    padding = 158;
  }
}

extension SizeConfigExtentions on num {
  double h(BuildContext context) => this * MediaQuery.sizeOf(context).height;
  double w(BuildContext context) => this * MediaQuery.sizeOf(context).width;
}
