import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_features_widget/about_us_features_widget.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_founder_message_widget/about_us_founder_message_widget.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_info_widget.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_landing_widget/about_us_landing_widget.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_our_products_widget/about_us_our_products_widget.dart';
import 'package:ecommerce_app/presentation/view/about_us_page/widgets/about_us_papular_brands_widget/about_us_papular_brands_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  static const String path = "/about-us";

  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              selectedIndex: 1,
              backgroundColor: colorPalette.darkPrimary,
              forgroundColor: colorPalette.primary,
            ),
            const AboutUsLandingWidget(),
            const AboutUsInfoWidget(),
            const AboutUsFounderMessageWidget(),
            const SizedBox(
              height: 100,
            ),
            const AboutUsFeaturesWidget(),
            const SizedBox(
              height: 100,
            ),
            const AccesoriesWidget(),
            const SizedBox(
              height: 120,
            ),
            const AboutUsOurProductsWidget(),
            const SizedBox(
              height: 120,
            ),
            const AboutUsPopularBrandsWidget(),
            const SizedBox(
              height: 120,
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
