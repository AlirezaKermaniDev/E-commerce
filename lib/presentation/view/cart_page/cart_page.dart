import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/cart_body_widget/cart_body_widget.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_widget/order_summery_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/alternative_products_widget/alternative_products_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:ecommerce_app/presentation/widgets/widget_stucker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "utils.dart";

class CartPage extends StatelessWidget {
  static const String path = "/cart";

  CartPage({super.key});
  final WidgetStuckerController _controller =
      WidgetStuckerController(stickWidgetVerticalyPadding: 50);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CartBloc>()..add(const CartEvent.getProducts()),
      child: Scaffold(
        backgroundColor: colorPalette.primary,
        drawer: const DrawerWidget(
          selectedIndex: 5,
        ),
        body: WidgetStucker(
            controller: _controller,
            builder: () {
              return ConstraintsWidget(
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      controller: _controller.scrollController,
                      child: Column(
                        children: [
                          HeaderWidget(
                              selectedIndex: 5,
                              backgroundColor: colorPalette.primary),
                          if (!context.isPhone)
                            Column(
                              children: [
                                Divider(
                                  color: colorPalette.gray5,
                                  thickness: 1.6,
                                ),
                              ],
                            ),
                          CartBodyWidget(
                            orderSummeryKey: _controller.stickWidgetKey,
                            listViewKey: _controller.scrollableWidgetKey,
                            isStuckTop: _controller.isStuckTop,
                          ),
                          AlternativeProductsWidget(
                              item: productListData.first),
                          if (!context.isPhone)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: getIt<SizeConfig>().padding,
                                  vertical: 70),
                              child: Divider(
                                color: colorPalette.gray5,
                                thickness: 1.6,
                                height: 1,
                              ),
                            ),
                          const FooterWidget()
                        ],
                      ),
                    ),
                    if (_shouldStuckWidgetTop(context, _controller.isStuckTop))
                      Positioned(
                        top: _topPosition(_controller),
                        right: _rightPosition(context),
                        left: _leftPosition(context),
                        child: BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            return orderSummeryBuilder(
                                cartBloc: context.read<CartBloc>());
                          },
                        ),
                      ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
