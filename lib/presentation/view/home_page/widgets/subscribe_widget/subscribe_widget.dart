import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SubscribeWidget extends StatelessWidget {
  const SubscribeWidget({super.key, this.fullWidth});
  final bool? fullWidth;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _SubscribeWidgetWeb(
        fullWidth: fullWidth,
      ),
      tablet: _SubscribeWidgetTablet(
        fullWidth: fullWidth,
      ),
      phone: const _SubscribeWidgetPhone(),
    );
  }
}
