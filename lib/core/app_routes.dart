import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/cart_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/product_detail_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Initial routes and pages of the project.
/// It is a map that 'the `Name` of thr route is [key] of the map' and 'the `Widget` of the page is [value] of the map'.
/// Widget should return by a function that pass [BuildContext] example => `(context) => LoginPage()`
// Map<String, Route> routes(RouteSettings settings) => {
//       HomePage.path: MaterialPageRoute(
//           builder: (_) => const HomePage(), settings: settings),
//       AboutUsPage.path: MaterialPageRoute(
//           builder: (_) => const AboutUsPage(), settings: settings),
//       ProductsPage.path: MaterialPageRoute(
//           builder: (_) => const ProductsPage(), settings: settings),
//       ProductDetailPage.path: MaterialPageRoute(
//           builder: (_) => const ProductDetailPage(), settings: settings),
//     };

final GoRouter routes = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: HomePage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: AboutUsPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const AboutUsPage();
      },
    ),
    GoRoute(
      path: ProductsPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const ProductsPage();
      },
    ),
    GoRoute(
      path: "${ProductDetailPage.path}/:pid",
      builder: (BuildContext context, GoRouterState state) {
        return ProductDetailPage(
          key: UniqueKey(),
          productId: state.pathParameters['pid']!,
        );
      },
    ),
    GoRoute(
      path: CartPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const CartPage();
      },
    ),
  ],
);
