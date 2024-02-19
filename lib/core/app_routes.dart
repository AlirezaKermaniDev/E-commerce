import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/product_detail_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:flutter/material.dart';

/// Initial routes and pages of the project.
/// It is a map that 'the `Name` of thr route is [key] of the map' and 'the `Widget` of the page is [value] of the map'.
/// Widget should return by a function that pass [BuildContext] example => `(context) => LoginPage()`
Map<String, Route> routes(RouteSettings settings) => {
      HomePage.path: MaterialPageRoute(
          builder: (_) => const HomePage(), settings: settings),
      AboutUsPage.path: MaterialPageRoute(
          builder: (_) => const AboutUsPage(), settings: settings),
      ProductsPage.path: MaterialPageRoute(
          builder: (_) => const ProductsPage(), settings: settings),
      ProductDetailPage.path: MaterialPageRoute(
          builder: (_) => const ProductDetailPage(), settings: settings),
    };
