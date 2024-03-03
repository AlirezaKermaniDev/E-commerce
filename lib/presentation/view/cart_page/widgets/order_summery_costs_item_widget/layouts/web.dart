part of '../order_summery_costs_item_widget.dart';

class _OrderSummeryCostsItemWidgetWeb extends StatelessWidget {
  const _OrderSummeryCostsItemWidgetWeb({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
    this.boldValue,
  });

  final String title;
  final String value;
  final Color? valueColor;
  final bool? boldValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: typography.bodyText2,
        ),
        Text(
          value,
          style: boldValue == true
              ? typography.h5Title
              : typography.bodyText2.copyWith(
                  color: valueColor,
                ),
        ),
      ],
    );
  }
}
