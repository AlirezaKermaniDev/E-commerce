import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class ColorSpecification implements Specification<ProductEntity> {
  final List<int> colors;

  ColorSpecification({required this.colors});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    final filterGendersSet = colors.toSet();
    final productGenderSer = item.colors!.toSet();
    return filterGendersSet.intersection(productGenderSer).isNotEmpty;
  }
}
