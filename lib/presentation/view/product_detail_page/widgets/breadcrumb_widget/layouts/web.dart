part of '../breadcrumb_widget.dart';

class _BreadcrumbWidgetWeb extends StatelessWidget {
  const _BreadcrumbWidgetWeb(
      {super.key,
      required this.items,
      this.selectedItem,
      this.isBold = false,
      this.unSelectedColor});

  final List<String> items;
  final String? selectedItem;
  final bool isBold;
  final Color? unSelectedColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            bool isSelected = items[index] == selectedItem;

            return AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(.1, 0), end: Offset.zero),
              delay: Duration(milliseconds: 200 * index),
              child: Row(
                children: [
                  if (isFirstItem(index))
                    SizedBox(
                      width: isBold ? 18 : 12,
                    ),
                  Text(
                    items[index],
                    style: isBold
                        ? typography.h5Title.copyWith(
                            color: _itemColor(isSelected),
                          )
                        : typography.bodyText2.copyWith(
                            color: _itemColor(isSelected),
                          ),
                  ),
                  SizedBox(
                    width: isBold ? 18 : 12,
                  ),
                  if (isLastItem(index))
                    isBold
                        ? Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                            color: unSelectedColor ?? colorPalette.gray2,
                          )
                        : Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: unSelectedColor ?? colorPalette.gray2,
                              shape: BoxShape.circle,
                            ),
                          )
                ],
              ),
            );
          }),
    );
  }

  Color? _itemColor(bool isSelected) {
    return isSelected ? null : unSelectedColor ?? colorPalette.gray2;
  }

  bool isFirstItem(int index) => index != 0;

  bool isLastItem(int index) => index != items.length - 1;
}
