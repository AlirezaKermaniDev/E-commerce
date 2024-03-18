part of 'filters_widget.dart';

Row _materialsExpandedWidget(
    BuildContext context, ProductsState state, ProductsBloc bloc) {
  return Row(
    children: [
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.suede,
          value: "Suede",
          groupValue: state.filters.materials ?? [],
          onTap: () {
            _onTapMaterial("Suede", state, bloc);
          },
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.leather,
          value: "Leather",
          groupValue: state.filters.materials ?? [],
          onTap: () {
            _onTapMaterial("Leather", state, bloc);
          },
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.fibre,
          value: "Fibre",
          groupValue: state.filters.materials ?? [],
          onTap: () {
            _onTapMaterial("Fibre", state, bloc);
          },
        ),
      ),
    ],
  );
}

Row _colorsExpandedWidget(
    BuildContext context, ProductsState state, ProductsBloc bloc) {
  return Row(
    children: [
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.green,
          color: 0xff315BFF,
          value: 0xff315BFF,
          groupValue: state.filters.colors ?? [],
          onTap: () {
            _onTapColor(0xff315BFF, state, bloc);
          },
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.blue,
          color: 0xff02BE83,
          value: 0xff02BE83,
          groupValue: state.filters.colors ?? [],
          onTap: () {
            _onTapColor(0xff02BE83, state, bloc);
          },
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.black,
          color: 0xff000000,
          value: 0xff000000,
          groupValue: state.filters.colors ?? [],
          onTap: () {
            _onTapColor(0xff000000, state, bloc);
          },
        ),
      ),
    ],
  );
}

Column _sizesExpandedWidget(
    BuildContext context, ProductsState state, ProductsBloc bloc) {
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
                _onTapSize(6, state, bloc);
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
                _onTapSize(7, state, bloc);
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
                _onTapSize(7.5, state, bloc);
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
                _onTapSize(9, state, bloc);
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
                _onTapSize(9.5, state, bloc);
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
                _onTapSize(10, state, bloc);
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
                _onTapSize(10.5, state, bloc);
              },
            ),
          ),
        ],
      ),
    ],
  );
}

Row _genderExpandedWidget(
    BuildContext context, ProductsState state, ProductsBloc bloc) {
  return Row(
    children: [
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.male,
          value: 0,
          groupValue: state.filters.genders ?? [],
          onTap: () {
            _onTapGender(0, state, bloc);
          },
        ),
      ),
      const SizedBox(
        width: 16,
      ),
      Expanded(
        child: FilterItemsButtonWidget(
          title: context.locale.female,
          value: 1,
          groupValue: state.filters.genders ?? [],
          onTap: () {
            _onTapGender(1, state, bloc);
          },
        ),
      ),
    ],
  );
}

void _onTapGender(int value, ProductsState state, ProductsBloc bloc) {
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

void _onTapSize(double value, ProductsState state, ProductsBloc bloc) {
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

void _onTapColor(int value, ProductsState state, ProductsBloc bloc) {
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

void _onTapMaterial(String value, ProductsState state, ProductsBloc bloc) {
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
