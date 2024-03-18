import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SizeConfig {
  late double padding;
  late double maxWidth;
  late double tabletTriggerSize;
  late double webTriggerSize;

  setSizeConfigs(BuildContext context) {
    maxWidth = 2000;
    tabletTriggerSize = 800;
    webTriggerSize = 1500;
    final double width = MediaQuery.sizeOf(context).width;
    if (width >= webTriggerSize) {
      padding = 158;
    } else if (width >= tabletTriggerSize) {
      padding = 64;
    } else {
      padding = 31;
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
  bool get isTablet => 1.w(this) < getIt<SizeConfig>().webTriggerSize;
  bool get isPhone => 1.w(this) < getIt<SizeConfig>().tabletTriggerSize;
}
