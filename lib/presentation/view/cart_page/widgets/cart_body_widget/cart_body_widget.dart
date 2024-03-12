import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/cart_page/cart_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/cart_products_list_widget/cart_products_list_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class CartBodyWidget extends StatelessWidget {
  const CartBodyWidget(
      {super.key,
      required this.isStuckTop,
      this.orderSummeryKey,
      this.listViewKey});

  final bool isStuckTop;
  final GlobalKey<State<StatefulWidget>>? orderSummeryKey;
  final GlobalKey<State<StatefulWidget>>? listViewKey;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _CartBodyWidgetWeb(
          isStuckTop: isStuckTop,
          orderSummeryKey: orderSummeryKey,
          listViewKey: listViewKey),
      tablet: const _CartBodyWidgetTablet(),
      phone: const _CartBodyWidgetPhone(),
    );
  }
}
