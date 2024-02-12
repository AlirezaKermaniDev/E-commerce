part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.getProduts() = _GetProduts;
  const factory ProductsEvent.changeSorting({required ProductSort newSorting}) =
      _ChangeSorting;
  const factory ProductsEvent.changeFilters({required ProductFilterEntity newFilters}) =
      _ChangeFilters;
}
