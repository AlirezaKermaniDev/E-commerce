import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/address_page/widgets/address_body_widget/address_body_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/breadcrumb_widget/breadcrumb_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatelessWidget {
  static const String path = "/address";

  const AddressPage({super.key});

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
                        selectedItem: context.locale.address,
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
                    context.locale.address,
                    style: typography.h4Title,
                  ),
                ),
              const AddressBodyWidget(),
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
