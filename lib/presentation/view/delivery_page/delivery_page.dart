import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/delivery_page/widgets/delivery_body_widget/delivery_body_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/breadcrumb_widget/breadcrumb_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatelessWidget {
  static const String path = "/delivery";

  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              selectedIndex: 6,
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
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
              child: Row(
                children: [
                  BreadcrumbWidget(
                    items: [
                      context.locale.cart,
                      context.locale.address,
                      context.locale.delivery,
                      context.locale.billing,
                    ],
                    selectedItem: context.locale.delivery,
                    isBold: true,
                    unSelectedColor: colorPalette.gray4,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            const DeliveryBodyWidget(),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getIt<SizeConfig>().padding),
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
    );
  }
}


