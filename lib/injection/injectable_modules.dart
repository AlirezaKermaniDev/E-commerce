import 'package:ecommerce_app/core/local_storage/local_storage.dart';
import 'package:ecommerce_app/core/local_storage/local_storage_impl.dart';
import 'package:ecommerce_app/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/domain/usecases/get_products_usecase.dart';
import 'package:ecommerce_app/injection/injection.dart';
import 'package:event_bus/event_bus.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Here we have 3rd party packages that we want to inject them to our classes
@module
abstract class InjectableModules {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  EventBus get eventBus => EventBus();

  @lazySingleton
  ProductRepository get productRepository => ProductRepository();

  @lazySingleton
  GetProductsUsecase get getProductsUsecase =>
      GetProductsUsecase(productRepository);

  @lazySingleton
  LocalStorage get localStorage =>
      LocalStorageImpl(preferences: getIt<SharedPreferences>());
}
