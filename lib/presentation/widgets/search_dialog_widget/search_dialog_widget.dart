import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/view/address_page/widgets/text_field_widget/text_field_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:ecommerce_app/presentation/widgets/search_product_item_widget/search_product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';

part "layouts/phone.dart";
part "layouts/tablet.dart";
part "layouts/web.dart";

class SearchDialogWidget extends StatelessWidget {
  const SearchDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _SearchDialogWidgetWeb(),
      phone: _SearchDialogWidgetPhone(),
      tablet: _SearchDialogWidgetTablet(),
    );
  }
}
