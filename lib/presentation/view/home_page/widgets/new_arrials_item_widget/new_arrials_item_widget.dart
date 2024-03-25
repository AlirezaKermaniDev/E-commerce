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
part "utils.dart";

class NewArrialsItemWidget extends StatelessWidget {
  const NewArrialsItemWidget(
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
      web: _NewArrialsItemWidgetWeb(
        gradients: gradients,
        item: item,
        index: index,
      ),
      tablet: _NewArrialsItemWidgetWeb(
        gradients: gradients,
        item: item,
        index: index,
      ),
      phone: _NewArrialsItemWidgetPhone(
        gradients: gradients,
        item: item,
        index: index,
      ),
    );
  }
}
