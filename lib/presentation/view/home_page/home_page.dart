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
import 'package:ecommerce_app/presentation/widgets/drawer_widget/drawer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/footer_widget/footer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/header_widget/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String path = "/";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPalette.primary,
      drawer: const DrawerWidget(
        selectedIndex: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              selectedIndex: 0,
              backgroundColor: colorPalette.gray6,
            ),
            const LandingPageWidget(),
            const FeaturedProductsWidget(),
            const AccesoriesWidget(),
            const BestSellerWidget(),
            const NewArrivalsWidget(),
            const WhyChooseOurShopWidget(),
            const ChooseCategoriesWidget(),
            const PopularBrandsWidget(),
            const SubscribeWidget(),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
