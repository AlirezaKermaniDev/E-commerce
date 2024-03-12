import 'package:ecommerce_app/injection/injection.dart';
import 'package:ecommerce_app/presentation/widgets/animator_text_widget.dart';
import 'package:ecommerce_app/presentation/widgets/responsive_builder.dart';
import 'package:flutter/widgets.dart';

part "./layouts/phone.dart";
part "./layouts/tablet.dart";
part "./layouts/web.dart";

class OrderSummeryCostsItemWidget extends StatelessWidget {
  const OrderSummeryCostsItemWidget(
      {super.key,
      required this.title,
      required this.value,
      this.valueColor,
      this.boldValue});
  final String title;
  final String value;
  final Color? valueColor;
  final bool? boldValue;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      web: _OrderSummeryCostsItemWidgetWeb(
        title: title,
        value: value,
        valueColor: valueColor,
        boldValue: boldValue,
      ),
      tablet: const _OrderSummeryCostsItemWidgetTablet(),
      phone: const _OrderSummeryCostsItemWidgetPhone(),
    );
  }
}
