import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_image_viewer_widget/product_image_viewer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ProductImageWidgetWeb(
        item: item,
      ),
      tablet: _ProductImageWidgetWeb(
        item: item,
      ),
      phone: _ProductImageWidgetPhone(
        item: item,
      ),
    );
  }
}
