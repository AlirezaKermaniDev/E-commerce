// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecommerce_app/core/app_theme/app_theme.dart' as _i3;
import 'package:ecommerce_app/core/local_storage/local_storage.dart' as _i8;
import 'package:ecommerce_app/core/size_config.dart' as _i13;
import 'package:ecommerce_app/domain/repositories/product_repository.dart'
    as _i10;
import 'package:ecommerce_app/domain/usecases/get_products_usecase.dart' as _i6;
import 'package:ecommerce_app/injection/injectable_modules.dart' as _i14;
import 'package:ecommerce_app/presentation/bloc/cart_bloc/cart_bloc.dart'
    as _i4;
import 'package:ecommerce_app/presentation/bloc/header_bloc/header_bloc.dart'
    as _i7;
import 'package:ecommerce_app/presentation/bloc/product_detail_bloc/product_detail_bloc.dart'
    as _i9;
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart'
    as _i11;
import 'package:event_bus/event_bus.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModules = _$InjectableModules();
    gh.lazySingleton<_i3.AppTheme>(() => _i3.LightAppTheme());
    gh.factory<_i4.CartBloc>(() => _i4.CartBloc());
    gh.lazySingleton<_i5.EventBus>(() => injectableModules.eventBus);
    gh.lazySingleton<_i6.GetProductsUsecase>(
        () => injectableModules.getProductsUsecase);
    gh.factory<_i7.HeaderBloc>(() => _i7.HeaderBloc());
    gh.lazySingleton<_i8.LocalStorage>(() => injectableModules.localStorage);
    gh.factory<_i9.ProductDetailBloc>(() => _i9.ProductDetailBloc());
    gh.lazySingleton<_i10.ProductRepository>(
        () => injectableModules.productRepository);
    gh.factory<_i11.ProductsBloc>(
        () => _i11.ProductsBloc(gh<_i6.GetProductsUsecase>()));
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => injectableModules.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i13.SizeConfig>(() => _i13.SizeConfig());
    return this;
  }
}

class _$InjectableModules extends _i14.InjectableModules {}
