import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/product_detail_page.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.item,
  });
  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ProductItemWidgetWeb(item: item),
      tablet: const _ProductItemWidgetTablet(),
      phone: const _ProductItemWidgetPhone(),
    );
  }
}