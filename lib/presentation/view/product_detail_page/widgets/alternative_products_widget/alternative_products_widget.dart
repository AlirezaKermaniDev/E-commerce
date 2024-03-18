import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/core/size_config.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/alternative_product_item_widget/alternative_product_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/constraints_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/scrollbar_widget.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AlternativeProductsWidget extends StatelessWidget {
  const AlternativeProductsWidget({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AlternativeProductsWidgetWeb(item: item),
      tablet: _AlternativeProductsWidgetWeb(item: item),
      phone: _AlternativeProductsWidgetPhone(item: item),
    );
  }
}
