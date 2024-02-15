import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class GenderSpecification implements Specification<ProductEntity> {
  final List<int>? genders;

  GenderSpecification({this.genders});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    if (genders != null && genders!.isNotEmpty) {
      final filterGendersSet = genders!.toSet();
      final productGenderSer = item.genders!.toSet();
      return filterGendersSet.intersection(productGenderSer).isNotEmpty;
    } else {
      return true;
    }
  }
}
