import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/category_item_widget/category_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/scrollbar_widget.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ChooseCategoriesWidget extends StatelessWidget {
  const ChooseCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: const _ChooseCategoriesWidgetWeb(),
      tablet: const _ChooseCategoriesWidgetWeb(),
      phone: _ChooseCategoriesWidgetPhone(),
    );
  }
}
