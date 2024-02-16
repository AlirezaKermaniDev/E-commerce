import 'package:ecommerce_app/core/extensions/locale_extensions.dart';
import 'package:ecommerce_app/domain/entities/prducts_sort.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filter_items_button_widget/filter_items_button_widget.dart';
import 'package:ecommerce_app/presentation/view/products_page/widgets/filter_items_widget/filter_items_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class FiltersWidget extends StatelessWidget {
  const FiltersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      web: _FiltersWidgetWeb(),
      tablet: _FiltersWidgetTablet(),
      phone: _FiltersWidgetPhone(),
    );
  }
}
