import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SizeConfig {
  late double padding;

  setSizeConfigs(BuildContext context) {
    if (MediaQuery.sizeOf(context).width >= 1400) {
      padding = 158;
    } else if (MediaQuery.sizeOf(context).width >= 700) {
      padding = 64;
    } else {
      return 31;
    }
  }
}

extension SizeConfigExtentions on num {
  double h(BuildContext context) => this * MediaQuery.sizeOf(context).height;
  double w(BuildContext context) => this * MediaQuery.sizeOf(context).width;
}
