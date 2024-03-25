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
    return Padding(
      padding: EdgeInsets.symmetric(vertical: _verticalPadding(context)),
      child: SizedBox(
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
                      style: _style(isSelected, isBold, unSelectedColor),
                    ),
                    SizedBox(
                      width: isBold ? 18 : 12,
                    ),
                    if (isLastItem(index, items))
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
                            ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
