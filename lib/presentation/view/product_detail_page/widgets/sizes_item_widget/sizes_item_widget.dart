import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:ecommerce_app/presentation/widgets/animator_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class SizesItemWidget extends StatelessWidget {
  const SizesItemWidget({
    super.key,
    required this.value,
    required this.index,
    required this.isAvailable,
    required this.isActive,
  });

  final String value;
  final int index;
  final bool isAvailable;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _SizesItemWidgetWeb(
        value: value,
        index: index,
        isActive: isActive,
        isAvailable: isAvailable,
      ),
      tablet: _SizesItemWidgetTablet(
        value: value,
        index: index,
        isActive: isActive,
        isAvailable: isAvailable,
      ),
      phone: _SizesItemWidgetPhone(
        value: value,
        index: index,
        isActive: isActive,
        isAvailable: isAvailable,
      ),
    );
  }
}
