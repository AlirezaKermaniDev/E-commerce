import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/arrow_title_button_widget/arrow_title_button_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/featured_products_item_widget/featured_products_item_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/featured_products_widget/data/featured_products_list.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/scrollbar_widget.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
  
  class FeaturedProductsWidget extends StatelessWidget {
    const FeaturedProductsWidget({super.key});
  
    @override
    Widget build(BuildContext context) {
      return const ResponsiveBuilder(
        web: _FeaturedProductsWidgetWeb(),
        tablet: _FeaturedProductsWidgetWeb(),
        phone: _FeaturedProductsWidgetPhone(),
      );
    }
  }
  