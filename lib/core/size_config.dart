import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SizeConfig {
  late double padding;
  late double maxWidth;

  setSizeConfigs(BuildContext context) {
    maxWidth = 2000;
    final double width = MediaQuery.sizeOf(context).width;
    if (width >= 1400) {
      padding = 158;
    } else if (width >= 900) {
      padding = 64;
    } else {
      return 31;
    }
  }
}

extension SizeConfigExtentions on num {
  double h(BuildContext context) => this * MediaQuery.sizeOf(context).height;
  double w(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width >= getIt<SizeConfig>().maxWidth) {
      width = getIt<SizeConfig>().maxWidth;
    }
    return this * width;
  }
}

extension Sizextentions on BuildContext {
  bool get isOnMaxWidth => 1.w(this) >= getIt<SizeConfig>().maxWidth;
}
