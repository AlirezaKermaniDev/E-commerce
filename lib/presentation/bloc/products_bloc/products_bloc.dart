import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/domain/entities/prducts_sort.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/domain/entities/product_filters_entity/product_filters_entity.dart';
import 'package:ecommerce_app/domain/usecases/get_products_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

@injectable
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUsecase getProductsUsecase;
  ProductsBloc(this.getProductsUsecase) : super(ProductsState.initial()) {
    on<_GetProduts>(_onGetProducts);
    on<_ChangeSorting>(_onChangeSorting);
    on<_ChangeFilters>(_onChangeFilters);
  }

  FutureOr<void> _onGetProducts(
      _GetProduts event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(isLoading: true));

    final poroducts =
        await getProductsUsecase(filters: state.filters, sort: state.sorts);
    emit(state.copyWith(isLoading: false, products: poroducts));
  }

  FutureOr<void> _onChangeSorting(
      _ChangeSorting event, Emitter<ProductsState> emit) {
    emit(state.copyWith(sorts: event.newSorting));

    add(const ProductsEvent.getProduts());
  }

  FutureOr<void> _onChangeFilters(
      _ChangeFilters event, Emitter<ProductsState> emit) {
    emit(state.copyWith(filters: event.newFilters));

    add(const ProductsEvent.getProduts());
  }
}
