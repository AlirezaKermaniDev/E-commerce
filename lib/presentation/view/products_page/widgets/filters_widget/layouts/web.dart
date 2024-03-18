part of '../filters_widget.dart';

class _FiltersWidgetWeb extends StatefulWidget {
  const _FiltersWidgetWeb({
    super.key,
  });

  @override
  State<_FiltersWidgetWeb> createState() => _FiltersWidgetWebState();
}

class _FiltersWidgetWebState extends State<_FiltersWidgetWeb> {
  late ProductsBloc bloc = context.read<ProductsBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return SizedBox(
            width: 300,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: colorPalette.primary,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: colorPalette.darkPrimary.withOpacity(.15),
                            blurRadius: 6,
                            offset: const Offset(0, 2))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20,
                    ),
                    child: Column(children: [
                      SortItemsWidget(
                        title: context.locale.newest,
                        value: ProductSort.newest,
                        groupValue: state.sorts,
                      ),
                      SortItemsWidget(
                        title: context.locale.mostPopular,
                        value: ProductSort.mostPopular,
                        groupValue: state.sorts,
                      ),
                      SortItemsWidget(
                        title: context.locale.lowestPrice,
                        value: ProductSort.lowestPrice,
                        groupValue: state.sorts,
                      ),
                      SortItemsWidget(
                        title: context.locale.highestPrice,
                        value: ProductSort.highestPrice,
                        groupValue: state.sorts,
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colorPalette.primary,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: colorPalette.darkPrimary.withOpacity(.15),
                            blurRadius: 6,
                            offset: const Offset(0, 2))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(children: [
                      FilterItemsWidget(
                        title: context.locale.gender,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _genderExpandedWidget(context, state, bloc),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FilterItemsWidget(
                          title: context.locale.size,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: _sizesExpandedWidget(context, state, bloc),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      FilterItemsWidget(
                        title: context.locale.color,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _colorsExpandedWidget(context, state, bloc),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FilterItemsWidget(
                        title: context.locale.material,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _materialsExpandedWidget(context, state, bloc),
                        ),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
