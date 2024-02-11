import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class ProductRepository {
  List<ProductEntity> getProducts() {
    return productListData;
  }
}
