import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:event_bus/event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'header_event.dart';
part 'header_state.dart';
part 'header_bloc.freezed.dart';

@injectable
class HeaderBloc extends Bloc<HeaderEvent, HeaderState> {
  HeaderBloc() : super(HeaderState.initial()) {
    getIt<EventBus>().on<AddToCartProductEntity>().listen((event) {
      getAddedToCartProductsCount();
    });
    on<_UpdateBasketCount>(_onUpdateBasketCount);
    getAddedToCartProductsCount();
  }

  void getAddedToCartProductsCount() {
    final addedToCartProductsList =
        getIt<LocalStorage>().getAddedProductsList();
    final count = addedToCartProductsList?.addToCartProducts?.length ?? 0;
    add(HeaderEvent.updateBasketCount(count: count));
  }

  FutureOr<void> _onUpdateBasketCount(
      _UpdateBasketCount event, Emitter<HeaderState> emit) {
    emit(state.copyWith(count: event.count));
  }
}
