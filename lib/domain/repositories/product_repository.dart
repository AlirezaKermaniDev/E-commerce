import 'package:ecommerce_app/core/specifications/category_specification.dart';
import 'package:ecommerce_app/core/specifications/color_specification.dart';
import 'package:ecommerce_app/core/specifications/gender_specification.dart';
import 'package:ecommerce_app/core/specifications/material_specification.dart';
import 'package:ecommerce_app/core/specifications/rate_specification.dart';
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
    if (filters != null) {
      if (filters.genders != null && filters.genders!.isNotEmpty) {
        final GenderSpecification genderSpecification =
            GenderSpecification(genders: filters.genders!);
        products = products
            .where((item) => genderSpecification.isSatisfiedBy(item))
            .toList();
      }
      if (filters.colors != null && filters.colors!.isNotEmpty) {
        final ColorSpecification genderSpecification =
            ColorSpecification(colors: filters.colors!);
        products = products
            .where((item) => genderSpecification.isSatisfiedBy(item))
            .toList();
      }
      if (filters.rate != null) {
        final RateSpecification rateSpecification =
            RateSpecification(rate: filters.rate!);
        products = products
            .where((item) => rateSpecification.isSatisfiedBy(item))
            .toList();
      }
      if (filters.categories != null && filters.categories!.isNotEmpty) {
        final CategorySpecification categorySpecification =
            CategorySpecification(categoies: filters.categories!);
        products = products
            .where((item) => categorySpecification.isSatisfiedBy(item))
            .toList();
      }
      if (filters.availableSizes != null &&
          filters.availableSizes!.isNotEmpty) {
        final SizeSpecification sizeSpecification =
            SizeSpecification(sizes: filters.availableSizes!);
        products = products
            .where((item) => sizeSpecification.isSatisfiedBy(item))
            .toList();
      }
      if (filters.materials != null && filters.materials!.isNotEmpty) {
        final MaterialSpecification materialSpecification =
            MaterialSpecification(materials: filters.materials!);
        products = products
            .where((item) => materialSpecification.isSatisfiedBy(item))
            .toList();
      }
    }
    return products;
  }
}
