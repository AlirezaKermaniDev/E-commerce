part of '../search_dialog_widget.dart';

class _SearchDialogWidgetWeb extends StatefulWidget {
  const _SearchDialogWidgetWeb({
    super.key,
  });

  @override
  State<_SearchDialogWidgetWeb> createState() => _SearchDialogWidgetWebState();
}

class _SearchDialogWidgetWebState extends State<_SearchDialogWidgetWeb> {
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
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 350, vertical: 90),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: shouldExpand ? 600 : 120,
          width: 720,
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
                          : ListView.builder(
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
