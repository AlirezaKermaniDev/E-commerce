import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/sizes_item_widget/sizes_item_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AvailableSizesWidget extends StatelessWidget {
  const AvailableSizesWidget({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AvailableSizesWidgetWeb(
        item: item,
      ),
      tablet: _AvailableSizesWidgetWeb(
        item: item,
      ),
      phone: const _AvailableSizesWidgetPhone(),
    );
  }
}
