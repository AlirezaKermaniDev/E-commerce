part of '../breadcrumb_widget.dart';

class _BreadcrumbWidgetWeb extends StatelessWidget {
  const _BreadcrumbWidgetWeb({super.key, required this.items});

  final List<String> items;

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
            return AnimatorWidget(
              withFadeTransition: true,
              slideTransition:
                  Tween<Offset>(begin: const Offset(.1, 0), end: Offset.zero),
              delay: Duration(milliseconds: 200 * index),
              child: Row(
                children: [
                  if (isFirstItem(index))
                    const SizedBox(
                      width: 12,
                    ),
                  Text(
                    items[index],
                    style: typography.bodyText2.copyWith(
                      color: colorPalette.gray2,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  if (isLastItem(index))
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        color: colorPalette.gray2,
                        shape: BoxShape.circle,
                      ),
                    )
                ],
              ),
            );
          }),
    );
  }

  bool isFirstItem(int index) => index != 0;

  bool isLastItem(int index) => index != items.length - 1;
}
