import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/featured_products_entity/featured_products_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/ratebar_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class FeaturedProductsItemWidget extends StatelessWidget {
  const FeaturedProductsItemWidget(
      {super.key,
      required this.gradients,
      required this.item,
      required this.index});

  final List<LinearGradient> gradients;
  final FeaturedProductsEntity item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _FeaturedProductsItemWidgetWeb(
        gradients: gradients,
        item: item,
        index: index,
      ),
      tablet: _FeaturedProductsItemWidgetWeb(
        gradients: gradients,
        item: item,
        index: index,
      ),
      phone: const _FeaturedProductsItemWidgetPhone(),
    );
  }
}
