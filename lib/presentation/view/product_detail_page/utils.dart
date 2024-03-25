part of 'product_detail_page.dart';

ConstraintsWidget _breadcrumbBuilderWidget(
    BuildContext context, ProductEntity product) {
  return ConstraintsWidget(
    child: Row(
      children: [
        Padding(
          // To refresh the padding when screen size changed
          padding: EdgeInsets.symmetric(
            horizontal: context.isTablet
                ? getIt<SizeConfig>().padding
                : getIt<SizeConfig>().padding,
          ),
          child: BreadcrumbWidget(
            items: product.categories ?? [],
          ),
        ),
      ],
    ),
  );
}

void _stateListener(context, state) {
  if (state.error != null) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: colorPalette.accent4,
        content: Text(
          state.error ?? "",
          style: typography.bodyText2.copyWith(color: colorPalette.primary),
        )));
  }
}
