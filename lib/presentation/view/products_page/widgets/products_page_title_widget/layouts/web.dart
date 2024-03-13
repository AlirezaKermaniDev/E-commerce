part of '../products_page_title_widget.dart';

class _ProductsPageTitleWidgetWeb extends StatelessWidget {
  const _ProductsPageTitleWidgetWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getIt<SizeConfig>().padding, vertical: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatorTextWidget(
            context.locale.performanceSneakers,
            style: typography.h4Title,
            initialDelay: const Duration(milliseconds: 200),
            spaceDelay: Duration.zero,
            incomingEffect: WidgetTransitionEffects.incomingScaleDown(
                blur: const Offset(0, 20),
                duration: const Duration(milliseconds: 170)),
            textAlign: TextAlign.start,
          ),
          BlocBuilder<ProductsBloc, ProductsState>(
            builder: (context, state) {
              return AnimatorTextWidget(
                "${state.products.length} ${context.locale.items}",
                initialDelay: const Duration(milliseconds: 700),
                style: typography.bodyText1.copyWith(
                  color: colorPalette.gray1,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
