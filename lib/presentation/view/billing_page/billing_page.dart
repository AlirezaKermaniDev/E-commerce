import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/billing_page/widgets/billing_main_widget/billing_main_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/breadcrumb_widget/breadcrumb_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
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
              if (!context.isPhone)
                Divider(
                  color: colorPalette.gray5,
                  thickness: 1.6,
                ),
              if (!context.isPhone)
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
              if (context.isPhone)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: AnimatorTextWidget(
                    context.locale.billing,
                    style: typography.h4Title,
                  ),
                ),
              const BillingMainWidget(),
              if (!context.isPhone)
                const SizedBox(
                  height: 100,
                ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getIt<SizeConfig>().padding),
                child: Divider(
                  color: colorPalette.gray5,
                  thickness: 1.6,
                ),
              ),
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}
