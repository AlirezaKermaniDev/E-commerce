import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class MaterialSpecification implements Specification<ProductEntity> {
  final List<String> materials;

  MaterialSpecification({required this.materials});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    final filterGendersSet = materials.toSet();
    final productGenderSer = item.materials!.toSet();
    return filterGendersSet.intersection(productGenderSer).isNotEmpty;
  }
}
