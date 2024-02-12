import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class GenderSpecification implements Specification<ProductEntity> {
  final List<int> genders;

  GenderSpecification({required this.genders});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    final filterGendersSet = genders.toSet();
    final productGenderSer = item.genders!.toSet();
    return filterGendersSet.intersection(productGenderSer).isNotEmpty;
  }
}
