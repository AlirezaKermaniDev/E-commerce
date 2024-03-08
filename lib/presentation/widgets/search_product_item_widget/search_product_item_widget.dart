import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/product_detail_page.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/product_item_widget/product_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part "layouts/phone.dart";
part "layouts/tablet.dart";
part "layouts/web.dart";

class SearchProductItemWidget extends StatelessWidget {
  const SearchProductItemWidget({super.key, required this.item});
  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _SearchProductItemWidgetWeb(
        item: item,
      ),
      phone: const _SearchProductItemWidgetPhone(),
      tablet: const _SearchProductItemWidgetTablet(),
    );
  }
}
