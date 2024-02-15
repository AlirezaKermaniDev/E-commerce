import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/category_entity/category_entity.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class CategorySpecification implements Specification<ProductEntity> {
  final List<String>? categories;

  CategorySpecification({this.categories});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    if (categories != null && categories!.isNotEmpty) {
      final List<String> productCategories = [];
      CategoryEntity? currenctCategory = item.category;
      while (currenctCategory?.category != null) {
        productCategories.add(currenctCategory!.title!);
        currenctCategory = currenctCategory.category;
      }
      final filterGendersSet = categories!.toSet();
      final productGenderSer = productCategories.toSet();
      return filterGendersSet.intersection(productGenderSer).isNotEmpty;
    } else {
      return true;
    }
  }
}
