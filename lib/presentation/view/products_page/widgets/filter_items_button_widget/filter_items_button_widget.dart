import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class FilterItemsButtonWidget extends StatelessWidget {
  const FilterItemsButtonWidget({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onTap,
    this.color,
  });

  final String title;
  final Object value;
  final List<Object> groupValue;
  final VoidCallback onTap;
  final int? color;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _FilterItemsButtonWidgetWeb(
        title: title,
        value: value,
        groupValue: groupValue,
        onTap: onTap,
        color: color,
      ),
      tablet: _FilterItemsButtonWidgetWeb(
        title: title,
        value: value,
        groupValue: groupValue,
        onTap: onTap,
        color: color,
      ),
      phone: const _FilterItemsButtonWidgetPhone(),
    );
  }
}
