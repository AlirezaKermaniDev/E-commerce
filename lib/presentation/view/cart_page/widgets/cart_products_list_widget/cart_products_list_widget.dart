import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/cart_products_item_widget/cart_products_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class CartProductsListWidget extends StatelessWidget {
  const CartProductsListWidget({super.key, this.listViewKey});

  final GlobalKey<State<StatefulWidget>>? listViewKey;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _CartProductsListWidgetWeb(listViewKey: listViewKey),
      tablet: const _CartProductsListWidgetTablet(),
      phone: const _CartProductsListWidgetPhone(),
    );
  }
}
