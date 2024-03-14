import 'package:ecommerce_app/core/asset_handler.dart';
import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/address_page/address_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_costs_item_widget/order_summery_costs_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class OrderSummeryWidget extends StatelessWidget {
  const OrderSummeryWidget(
      {super.key, this.withContinueBttons = true, required this.cartBloc});
  final bool withContinueBttons;
  final CartBloc cartBloc;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _OrderSummeryWidgetWeb(
        withContinueBttons: withContinueBttons,
        cartBloc: cartBloc,
      ),
      tablet: _OrderSummeryWidgetTablet(
        withContinueBttons: withContinueBttons,
        cartBloc: cartBloc,
      ),
      phone: const _OrderSummeryWidgetPhone(),
    );
  }
}
