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
            width: 350,
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
                        title: "Newest",
                        value: ProductSort.newest,
                        groupValue: state.sorts,
                      ),
                      SortItemsWidget(
                        title: "Most popular",
                        value: ProductSort.mostPopular,
                        groupValue: state.sorts,
                      ),
                      SortItemsWidget(
                        title: "Lowest price",
                        value: ProductSort.lowestPrice,
                        groupValue: state.sorts,
                      ),
                      SortItemsWidget(
                        title: "Highest price",
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
                        title: "Gender",
                        isActive: _isGenderExpandActive(context, state),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _genderExpandedWidget(context, state),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FilterItemsWidget(
                          title: "Size",
                          isActive: _isSizeExpandActive(context, state),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: _sizesExpandedWidget(context, state),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      FilterItemsWidget(
                        title: "Color",
                        isActive: _isColorExpandActive(context, state),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _colorsExpandedWidget(context, state),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FilterItemsWidget(
                        title: "Material",
                        isActive: _isMaterialExpandActive(context, state),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: _materialsExpandedWidget(context, state),
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

  Row _materialsExpandedWidget(BuildContext context, ProductsState state) {
    return Row(
      children: [
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Suede",
            value: "Suede",
            groupValue: state.filters.materials ?? [],
            onTap: () {
              _onTapMaterial("Suede", state);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Leather",
            value: "Leather",
            groupValue: state.filters.materials ?? [],
            onTap: () {
              _onTapMaterial("Leather", state);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Fibre",
            value: "Fibre",
            groupValue: state.filters.materials ?? [],
            onTap: () {
              _onTapMaterial("Fibre", state);
            },
          ),
        ),
      ],
    );
  }

  Row _colorsExpandedWidget(BuildContext context, ProductsState state) {
    return Row(
      children: [
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Green",
            color: 0xff315BFF,
            value: 0xff315BFF,
            groupValue: state.filters.colors ?? [],
            onTap: () {
              _onTapColor(0xff315BFF, state);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Blue",
            color: 0xff02BE83,
            value: 0xff02BE83,
            groupValue: state.filters.colors ?? [],
            onTap: () {
              _onTapColor(0xff02BE83, state);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Red",
            color: 0xff000000,
            value: 0xff000000,
            groupValue: state.filters.colors ?? [],
            onTap: () {
              _onTapColor(0xff000000, state);
            },
          ),
        ),
      ],
    );
  }

  Column _sizesExpandedWidget(BuildContext context, ProductsState state) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: FilterItemsButtonWidget(
                title: "6",
                value: 6,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(6, state);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButtonWidget(
                title: "7",
                value: 7,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(7, state);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButtonWidget(
                title: "7.5",
                value: 7.5,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(7.5, state);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButtonWidget(
                title: "9",
                value: 9,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(9, state);
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: FilterItemsButtonWidget(
                title: "9.5",
                value: 9.5,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(9.5, state);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButtonWidget(
                title: "10",
                value: 10,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(10, state);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: FilterItemsButtonWidget(
                title: "10.5",
                value: 10.5,
                groupValue: state.filters.availableSizes ?? [],
                onTap: () {
                  _onTapSize(10.5, state);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _genderExpandedWidget(BuildContext context, ProductsState state) {
    return Row(
      children: [
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Male",
            value: 0,
            groupValue: state.filters.genders ?? [],
            onTap: () {
              _onTapGender(0, state);
            },
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: FilterItemsButtonWidget(
            title: "Female",
            value: 1,
            groupValue: state.filters.genders ?? [],
            onTap: () {
              _onTapGender(1, state);
            },
          ),
        ),
      ],
    );
  }

  void _onTapGender(int value, ProductsState state) {
    var filters = state.filters;
    var genderValue = filters.genders;
    if (genderValue == null) {
      filters = state.filters.copyWith(genders: [value]);
    } else {
      List<int> genders = [];
      genders.addAll(genderValue);
      if (genders.contains(value)) {
        genders.remove(value);
      } else {
        genders.add(value);
      }
      filters = state.filters.copyWith(genders: genders);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  void _onTapSize(double value, ProductsState state) {
    var filters = state.filters;

    var sizeValue = filters.availableSizes;
    if (sizeValue == null) {
      filters = state.filters.copyWith(availableSizes: [value]);
    } else {
      List<double> sizes = [];
      sizes.addAll(sizeValue);
      if (sizes.contains(value)) {
        sizes.remove(value);
      } else {
        sizes.add(value);
      }
      filters = state.filters.copyWith(availableSizes: sizes);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  void _onTapColor(int value, ProductsState state) {
    var filters = state.filters;

    var colorsValue = filters.colors;
    if (colorsValue == null) {
      filters = state.filters.copyWith(colors: [value]);
    } else {
      List<int> colors = [];
      colors.addAll(colorsValue);
      if (colors.contains(value)) {
        colors.remove(value);
      } else {
        colors.add(value);
      }
      filters = state.filters.copyWith(colors: colors);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  void _onTapMaterial(String value, ProductsState state) {
    var filters = state.filters;

    var materialValue = filters.materials;
    if (materialValue == null) {
      filters = state.filters.copyWith(materials: [value]);
    } else {
      List<String> materials = [];
      materials.addAll(materialValue);
      if (materials.contains(value)) {
        materials.remove(value);
      } else {
        materials.add(value);
      }
      filters = state.filters.copyWith(materials: materials);
    }
    bloc.add(ProductsEvent.changeFilters(newFilters: filters));
  }

  bool _isGenderExpandActive(BuildContext context, ProductsState state) {
    return state.filters.genders != null && state.filters.genders!.isNotEmpty;
  }

  bool _isSizeExpandActive(BuildContext context, ProductsState state) {
    return state.filters.availableSizes != null &&
        state.filters.availableSizes!.isNotEmpty;
  }

  bool _isColorExpandActive(BuildContext context, ProductsState state) {
    return state.filters.colors != null && state.filters.colors!.isNotEmpty;
  }

  bool _isMaterialExpandActive(BuildContext context, ProductsState state) {
    return state.filters.materials != null &&
        state.filters.materials!.isNotEmpty;
  }
}

class SortItemsWidget extends StatelessWidget {
  const SortItemsWidget({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
  });
  final String title;
  final ProductSort value;
  final ProductSort groupValue;

  bool isActive() {
    return value == groupValue;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorPalette.primary,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {
          context
              .read<ProductsBloc>()
              .add(ProductsEvent.changeSorting(newSorting: value));
        },
        hoverColor: colorPalette.gray6,
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          height: 55,
          decoration: BoxDecoration(
            color: colorPalette.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: typography.bodyText2.copyWith(
                      color: isActive()
                          ? colorPalette.accent1
                          : colorPalette.gray2),
                ),
                if (isActive())
                  Icon(
                    Icons.check_rounded,
                    color: colorPalette.gray3,
                    size: 20,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
