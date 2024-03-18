import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/cart_products_item_widget/cart_products_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      tablet: _CartProductsListWidgetTablet(listViewKey: listViewKey),
      phone: _CartProductsListWidgetPhone(listViewKey: listViewKey),
    );
  }
}
