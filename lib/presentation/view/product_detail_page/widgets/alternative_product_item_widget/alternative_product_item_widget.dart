import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/product_detail_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_image_viewer_widget/product_image_viewer_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";
part "utils.dart";

class AlternativeProductItemWidget extends StatelessWidget {
  const AlternativeProductItemWidget({
    super.key,
    required this.item,
    required this.index,
  });

  final ProductEntity item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AlternativeProductItemWidgetWeb(
        item: item,
        index: index,
      ),
      tablet: _AlternativeProductItemWidgetWeb(
        item: item,
        index: index,
      ),
      phone: _AlternativeProductItemWidgetPhone(
        item: item,
        index: index,
      ),
    );
  }
}
