import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_item_widget/product_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget(
      {super.key,
      required this.stickWidgetKey,
      required this.scrollableWidgetKey,
      required this.isStuckTop});

  final GlobalKey stickWidgetKey;
  final GlobalKey scrollableWidgetKey;
  final bool isStuckTop;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ProductsListWidgetWeb(
          stickWidgetKey: stickWidgetKey,
          scrollableWidgetKey: scrollableWidgetKey,
          isStuckTop: isStuckTop),
      tablet: _ProductsListWidgetWeb(
          stickWidgetKey: stickWidgetKey,
          scrollableWidgetKey: scrollableWidgetKey,
          isStuckTop: isStuckTop),
      phone: _ProductsListWidgetPhone(
          stickWidgetKey: stickWidgetKey,
          scrollableWidgetKey: scrollableWidgetKey),
    );
  }
}
