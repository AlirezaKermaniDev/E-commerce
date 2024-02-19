import 'package:ecommerce_app/injection/injection.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  static const String path = "/product-detail";

  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: colorPalette.primary);
  }
}
