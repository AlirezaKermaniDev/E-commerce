import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/add_to_cart_buttons_widget/add_to_cart_buttons_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/available_colors_widget/available_colors_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/available_sizes_widget/available_sizes_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filter_items_widget/filter_items_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/ratebar_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ProductDetailWidgetWeb(
        item: item,
      ),
      tablet: _ProductDetailWidgetTablet(
        item: item,
      ),
      phone: _ProductDetailWidgetPhone(
        item: item,
      ),
    );
  }
}
