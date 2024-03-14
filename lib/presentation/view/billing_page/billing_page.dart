import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:ecommerce_app/presentation/view/billing_page/widgets/billing_body_widget/billing_body_widget.dart';
import 'package:ecommerce_app/presentation/view/cart_page/widgets/order_summery_widget/order_summery_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/breadcrumb_widget/breadcrumb_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class BillingPage extends StatelessWidget {
  static const String path = "/billing";

  const BillingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      drawer: const DrawerWidget(
        selectedIndex: 5,
      ),
      body: ConstraintsWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                selectedIndex: 5,
                backgroundColor: colorPalette.primary,
              ),
              Divider(
                color: colorPalette.gray5,
                thickness: 1.6,
              ),
              const SizedBox(
                height: 72,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: Row(
                  children: [
                    BreadcrumbWidget(
                      items: [
                        context.locale.cart,
                        context.locale.address,
                        context.locale.delivery,
                        context.locale.billing,
                      ],
                      selectedItem: context.locale.billing,
                      isBold: true,
                      unSelectedColor: colorPalette.gray4,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(child: BillingBodyWidget()),
                    const SizedBox(
                      width: 32,
                    ),
                    AnimatorWidget(
                      withFadeTransition: true,
                      delay: const Duration(milliseconds: 1200),
                      slideTransition: Tween<Offset>(
                          begin: const Offset(0, .1), end: Offset.zero),
                      child: OrderSummeryWidget(
                        withContinueBttons: false,
                        cartBloc: getIt<CartBloc>()
                          ..add(const CartEvent.getProducts()),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: Divider(
                  color: colorPalette.gray5,
                  thickness: 1.6,
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
