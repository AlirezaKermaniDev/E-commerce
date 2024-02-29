import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/product_detail_widget/product_detail_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/product_image_widget/product_image_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class ProductInfoWidget extends StatelessWidget {
  const ProductInfoWidget({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _ProductInfoWidgetWeb(
        item: item,
      ),
      tablet: const _ProductInfoWidgetTablet(),
      phone: const _ProductInfoWidgetPhone(),
    );
  }
}
