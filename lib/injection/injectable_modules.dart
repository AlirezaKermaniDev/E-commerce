import 'package:ecommerce_app/domain/repositories/product_repository.dart';
import 'package:ecommerce_app/domain/usecases/get_products_usecase.dart';
import 'package:injectable/injectable.dart';

/// Here we have 3rd party packages that we want to inject them to our classes
@module
abstract class InjectableModules {
  @lazySingleton
  ProductRepository get productRepository => ProductRepository();
  @lazySingleton
  GetProductsUsecase get getProductsUsecase =>
      GetProductsUsecase(productRepository);
}
