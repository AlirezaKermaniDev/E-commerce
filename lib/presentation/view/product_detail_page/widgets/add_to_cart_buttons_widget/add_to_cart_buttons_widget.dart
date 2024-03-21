import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/add_to_cart_button_widget/add_to_card_button_widget.dart';
import 'package:ecommerce_app/presentation/view/product_detail_page/widgets/product_count_button_widget/product_count_button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class AddToCartButtonsWidget extends StatelessWidget {
  const AddToCartButtonsWidget({super.key, required this.item});

  final ProductEntity item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _AddToCartButtonsWidgetWeb(item: item),
      tablet: _AddToCartButtonsWidgetTablet(item: item),
      phone: _AddToCartButtonsWidgetPhone(item: item),
    );
  }
}
