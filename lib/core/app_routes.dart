import 'package:ecommerce_app/presentation/view/about_us_page/about_us_page.dart';
import 'package:ecommerce_app/presentation/view/address_page/address_page.dart';
import 'package:ecommerce_app/presentation/view/billing_page/billing_page.dart';
import 'package:ecommerce_app/presentation/view/cart_page/cart_page.dart';
import 'package:ecommerce_app/presentation/view/delivery_page/delivery_page.dart';
import 'package:ecommerce_app/presentation/view/home_page/home_page.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/product_detail_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/products_page.dart';
import 'package:ecommerce_app/presentation/view/sign_in_page/sign_in_page.dart';
import 'package:ecommerce_app/presentation/view/sign_up_page/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        return ProductsPage();
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
        return CartPage();
      },
    ),
    GoRoute(
      path: AddressPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const AddressPage();
      },
    ),
    GoRoute(
      path: DeliveryPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const DeliveryPage();
      },
    ),
    GoRoute(
      path: BillingPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const BillingPage();
      },
    ),
    GoRoute(
      path: SignInPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      path: SignUpPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SignUpPage();
      },
    ),
  ],
);
