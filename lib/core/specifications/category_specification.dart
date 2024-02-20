import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class CategorySpecification implements Specification<ProductEntity> {
  final List<String>? categories;

  CategorySpecification({this.categories});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    if (categories != null && categories!.isNotEmpty) {
      final filterCategorySet = categories!.toSet();
      final productCategorySer = item.categories!.toSet();
      return filterCategorySet.intersection(productCategorySer).isNotEmpty;
    } else {
      return true;
    }
  }
}
