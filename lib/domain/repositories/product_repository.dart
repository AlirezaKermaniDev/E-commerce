import 'package:ecommerce_app/core/specifications/category_specification.dart';
import 'package:ecommerce_app/core/specifications/color_specification.dart';
import 'package:ecommerce_app/core/specifications/gender_specification.dart';
import 'package:ecommerce_app/core/specifications/material_specification.dart';
import 'package:ecommerce_app/core/specifications/size_specification.dart';
import 'package:ecommerce_app/data/product_list_data.dart';
import 'package:ecommerce_app/domain/entities/prducts_sort.dart';
import 'package:ecommerce_app/domain/entities/product_entity/product_entity.dart';
import 'package:ecommerce_app/domain/entities/product_filters_entity/product_filters_entity.dart';

class ProductRepository {
  List<ProductEntity> getProducts({
    ProductFilterEntity? filters,
    ProductSort? sort,
  }) {
    List<ProductEntity> products = [];
    products.addAll(productListData);
    final genderSpecification = GenderSpecification(genders: filters?.genders);
    final colorSpecification = ColorSpecification(colors: filters?.colors);
    final categorySpecification =
        CategorySpecification(categories: filters?.categories);
    final sizeSpecification = SizeSpecification(sizes: filters?.availableSizes);
    final materialSpecification =
        MaterialSpecification(materials: filters?.materials);
    products = products
        .where(
          (item) =>
              materialSpecification.isSatisfiedBy(item) &&
              genderSpecification.isSatisfiedBy(item) &&
              colorSpecification.isSatisfiedBy(item) &&
              categorySpecification.isSatisfiedBy(item) &&
              sizeSpecification.isSatisfiedBy(item),
        )
        .toList();
    if (sort != null) {
      sortProducts(products)[sort]!();
    }
    return products;
  }
}

Map<ProductSort, Function> sortProducts(List<ProductEntity> products) => {
      ProductSort.newest: () =>
          products.sort((a, b) => b.createdAt!.compareTo(a.createdAt!)),
      ProductSort.highestPrice: () =>
          products.sort((a, b) => b.price!.compareTo(a.price!)),
      ProductSort.lowestPrice: () =>
          products.sort((a, b) => a.price!.compareTo(b.price!)),
      ProductSort.mostPopular: () =>
          products.sort((a, b) => b.rate!.compareTo(a.rate!)),
    };
