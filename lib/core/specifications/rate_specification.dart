import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class RateSpecification implements Specification<ProductEntity> {
  final double rate;

  RateSpecification({required this.rate});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    return item.rate! >= rate;
  }
}
