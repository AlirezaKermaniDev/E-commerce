import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/accesories_widget/accesories_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/best_seller_widget/best_seller_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/choose_categories_widget/choose_categories_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/featured_products_widget/featured_products_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/landing_page_widget/landing_page_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/new_arrivals_widget/new_arrivals_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/popular_brands_widget/popular_brands_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/subscribe_widget/subscribe_widget.dart';
import 'package:ecommerce_app/presentation/view/home_page/widgets/why_choose_our_shop_widget/why_choose_our_shop_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String path = "/";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              selectedIndex: 0,
              backgroundColor: colorPalette.gray6,
            ),
            const LandingPageWidget(),
            const SizedBox(
              height: 120,
            ),
            const FeaturedProductsWidget(),
            const SizedBox(
              height: 140,
            ),
            const AccesoriesWidget(),
            const SizedBox(
              height: 100,
            ),
            const BestSellerWidget(),
            const SizedBox(
              height: 100,
            ),
            const NewArrivalsWidget(),
            const SizedBox(
              height: 140,
            ),
            const WhyChooseOurShopWidget(),
            const SizedBox(
              height: 120,
            ),
            const ChooseCategoriesWidget(),
            const SizedBox(
              height: 120,
            ),
            const PopularBrandsWidget(),
            const SubscribeWidget(),
            const SizedBox(
              height: 120,
            ),
            const FooterWidget(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
