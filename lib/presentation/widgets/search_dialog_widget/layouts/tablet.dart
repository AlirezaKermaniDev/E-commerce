part of '../search_dialog_widget.dart';

class _SearchDialogWidgetTablet extends StatefulWidget {
  const _SearchDialogWidgetTablet({
    super.key,
  });

  @override
  State<_SearchDialogWidgetTablet> createState() =>
      _SearchDialogWidgetTabletState();
}

class _SearchDialogWidgetTabletState extends State<_SearchDialogWidgetTablet> {
  String searchValue = "";
  String searchedValue = "";
  bool isLoading = false;
  bool shouldExpand = false;
  List<ProductEntity>? products;
  onSearch() async {
    if (searchValue.isNotEmpty) {
      setState(() {
        shouldExpand = true;
      });
      await Future.delayed(const Duration(milliseconds: 250));
      setState(() {
        isLoading = true;
      });
      await Future.delayed(const Duration(milliseconds: 1000));
      setState(() {
        isLoading = false;
        searchedValue = searchValue;
        products = productListData
            .where((e) => e.title!.contains(searchValue))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: context.isLtrLocale ? Alignment.topRight : Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.all(getIt<SizeConfig>().padding),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: shouldExpand ? 600 : 120,
          width: 1.w(context),
          decoration: BoxDecoration(
              color: colorPalette.primary,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    blurRadius: 32,
                    offset: const Offset(0, 12))
              ]),
          child: Material(
            borderRadius: BorderRadius.circular(8),
            color: colorPalette.primary,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(children: [
                TextFieldWidget(
                  lable: context.locale.search,
                  onChange: (value) {
                    setState(() {
                      searchValue = value;
                    });
                  },
                  onTapSuffix: onSearch,
                ),
                if (products != null)
                  const SizedBox(
                    height: 8,
                  ),
                if (isLoading)
                  Expanded(
                      child: Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: colorPalette.accent4,
                    ),
                  ))
                else if (products != null)
                  Expanded(
                      child: products!.isEmpty
                          ? Center(
                              child: TextHighlight(
                                text:
                                    '${context.locale.noResultFor} "$searchedValue"',
                                textStyle: typography.bodyText2,
                                words: {
                                  searchedValue: HighlightedWord(
                                      padding: const EdgeInsets.only(bottom: 6),
                                      textStyle: typography.bodyText3.copyWith(
                                          fontWeight: FontWeight.bold))
                                },
                              ),
                            )
                          : GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 3,
                              ),
                              itemCount: products!.length,
                              padding: const EdgeInsets.only(top: 25),
                              itemBuilder: (context, index) {
                                final item = products![index];
                                return SearchProductItemWidget(item: item);
                              }))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
