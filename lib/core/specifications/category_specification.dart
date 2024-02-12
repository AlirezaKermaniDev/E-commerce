import 'package:ecommerce_app/core/specifications/specification.dart';
import 'package:ecommerce_app/domain/entities/category_entity/category_entity.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';

class CategorySpecification implements Specification<ProductEntity> {
  final List<String> categoies;

  CategorySpecification({required this.categoies});
  @override
  bool isSatisfiedBy(ProductEntity item) {
    final List<String> productCategories = [];
    CategoryEntity? currenctCategory = item.category;
    while (currenctCategory?.category != null) {
      productCategories.add(currenctCategory!.title!);
      currenctCategory = currenctCategory.category;
    }
    final filterGendersSet = categoies.toSet();
    final productGenderSer = productCategories.toSet();
    return filterGendersSet.intersection(productGenderSer).isNotEmpty;
  }
}
