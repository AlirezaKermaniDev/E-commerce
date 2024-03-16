import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/domain/entities/add_to_cart_product_entity/add_to_cart_product_entity.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:restart_app/restart_app.dart';

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
    on<_ChangeThemeMode>(_onChangeThemeMode);
    on<_ChangeLanguage>(_onChangeLanguage);
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
    emit(state.copyWith(addedToCartProductsCount: event.count));
  }

  FutureOr<void> _onChangeThemeMode(
      _ChangeThemeMode event, Emitter<HeaderState> emit) async {
    final correntThemeMode = getIt<LocalStorage>().getTheme().themeMode;
    final themeMode =
        correntThemeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await getIt<LocalStorage>().setThemeMode(themeMode);
    Restart.restartApp();
  }

  FutureOr<void> _onChangeLanguage(
      _ChangeLanguage event, Emitter<HeaderState> emit) async {
    await getIt<LocalStorage>().setLocale(event.locale);
    Restart.restartApp();
  }
}
