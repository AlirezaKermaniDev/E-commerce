import 'package:ecommerce_app/domain/entities/prducts_sort.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/domain/entities/product_filters_entity/product_filters_entity.dart';
import 'package:ecommerce_app/domain/repositories/product_repository.dart';

class GetProductsUsecase {
  final ProductRepository _productRepository;

  GetProductsUsecase(this._productRepository);

  Future<List<ProductEntity>> call(
      {ProductFilterEntity? filters, ProductSort? sort}) async {
    return _productRepository.getProducts(filters: filters, sort: sort);
  }
}
