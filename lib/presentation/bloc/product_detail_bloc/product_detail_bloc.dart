import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

@injectable
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc() : super(ProductDetailState.initial()) {
    on<_IncreaseCount>(_onIncreaseCount);
    on<_DecreaseCount>(_onDecreaseCount);
    on<_ChangeSelectedSizes>(_onChangeSelectedSizes);
    on<_AddToCart>(_onAddToCart);
    on<_GetProduct>(_onGetProduct);
  }

  FutureOr<void> _onIncreaseCount(
      _IncreaseCount event, Emitter<ProductDetailState> emit) {
    final addCountValue = state.addCount + 1;
    emit(state.copyWith(addCount: addCountValue));
  }

  FutureOr<void> _onDecreaseCount(
      _DecreaseCount event, Emitter<ProductDetailState> emit) {
    if (state.addCount <= 1) {
      emit(state.copyWith(error: "Count number cant be less then 1"));
    } else {
      final addCountValue = state.addCount - 1;
      emit(state.copyWith(addCount: addCountValue, error: null));
    }
  }

  FutureOr<void> _onChangeSelectedSizes(
      _ChangeSelectedSizes event, Emitter<ProductDetailState> emit) {
    final List<double> sizesValue = [];
    sizesValue.addAll(state.selectedSizes);
    if (_isAlreadyAdded(event)) {
      sizesValue.remove(event.size);
      emit(state.copyWith(selectedSizes: sizesValue));
    } else {
      sizesValue.add(event.size);
      emit(state.copyWith(selectedSizes: sizesValue));
    }
  }

  bool _isAlreadyAdded(_ChangeSelectedSizes event) =>
      state.selectedSizes.contains(event.size);

  FutureOr<void> _onAddToCart(
      _AddToCart event, Emitter<ProductDetailState> emit) async {
    if (state.selectedSizes.isEmpty) {
      emit(state.copyWith(error: "Select your size"));
    } else {
      emit(state.copyWith(error: null));
      final AddToCartProductEntity addToCartProductEntity =
          AddToCartProductEntity(
        product: event.product,
        selectedSizes: state.selectedSizes,
        count: state.addCount,
      );
      getIt<LocalStorage>().addProductToCart(addToCartProductEntity);
    }
  }

  FutureOr<void> _onGetProduct(
      _GetProduct event, Emitter<ProductDetailState> emit) {
    ProductEntity product =
        productListData.firstWhere((e) => e.id == event.productId);
    emit(state.copyWith(product: product));
  }
}
