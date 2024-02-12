import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class SizeSpecification implements Specification<ProductEntity> {
  final List<double> sizes;

  SizeSpecification({required this.sizes});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    final filterGendersSet = sizes.toSet();
    final productGenderSer = item.availableSizes!.toSet();
    return filterGendersSet.intersection(productGenderSer).isNotEmpty;
  }
}
