// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ecommerce_app/core/app_theme/app_theme.dart' as _i3;
import 'package:ecommerce_app/core/size_config.dart' as _i7;
import 'package:ecommerce_app/domain/repositories/product_repository.dart'
    as _i5;
import 'package:ecommerce_app/domain/usecases/get_products_usecase.dart' as _i4;
import 'package:ecommerce_app/injection/injectable_modules.dart' as _i8;
import 'package:ecommerce_app/presentation/bloc/products_bloc/products_bloc.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModules = _$InjectableModules();
    gh.lazySingleton<_i3.AppTheme>(() => _i3.LightAppTheme());
    gh.lazySingleton<_i4.GetProductsUsecase>(
        () => injectableModules.getProductsUsecase);
    gh.lazySingleton<_i5.ProductRepository>(
        () => injectableModules.productRepository);
    gh.factory<_i6.ProductsBloc>(
        () => _i6.ProductsBloc(gh<_i4.GetProductsUsecase>()));
    gh.lazySingleton<_i7.SizeConfig>(() => _i7.SizeConfig());
    return this;
  }
}

class _$InjectableModules extends _i8.InjectableModules {}
