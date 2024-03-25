import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/tooltip_widget/tooltip_widget.dart';
import 'package:ecommerce_app/presentation/widgets/tooltip_widget/widgets/discount_tooltip_content_widget.dart';
import 'package:ecommerce_app/presentation/widgets/tooltip_widget/widgets/product_detail_tooltip_content_widget.dart';
import 'package:ecommerce_app/presentation/widgets/tooltip_widget/widgets/purchased_tooltip_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class AboutUsLandingWidget extends StatelessWidget {
  const AboutUsLandingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _AboutUsLandingWidgetWeb(),
      tablet: _AboutUsLandingWidgetTablet(),
      phone: _AboutUsLandingWidgetPhone(),
    );
  }
}
