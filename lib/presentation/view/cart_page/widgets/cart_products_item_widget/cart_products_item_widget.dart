import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/cart_products_item_delete_button_widget/cart_products_item_delete_button_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/product_count_button_widget/product_count_button_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_image_viewer_widget/product_image_viewer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class CartProductsItemWidget extends StatelessWidget {
  const CartProductsItemWidget(
      {super.key, required this.item, required this.index});
  final AddToCartProductEntity item;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _CartProductsItemWidgetWeb(
        item: item,
        index: index,
      ),
      tablet: _CartProductsItemWidgetTablet(
        item: item,
        index: index,
      ),
      phone: _CartProductsItemWidgetPhone(
        item: item,
        index: index,
      ),
    );
  }
}
