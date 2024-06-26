import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/featured_products_data.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/arrow_title_button_widget/arrow_title_button_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/new_arrials_item_widget/new_arrials_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/scrollbar_widget.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class NewArrivalsWidget extends StatelessWidget {
  const NewArrivalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _NewArrivalsWidgetWeb(),
      tablet: _NewArrivalsWidgetWeb(),
      phone: _NewArrivalsWidgetPhone(),
    );
  }
}
