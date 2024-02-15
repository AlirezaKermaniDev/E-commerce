import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_filters_entity.freezed.dart';
part 'product_filters_entity.g.dart';

@Freezed(toJson: true)
abstract class ProductFilterEntity with _$ProductFilterEntity {
  const factory ProductFilterEntity({
    List<String>? categories,
    List<double>? availableSizes,
    List<int>? colors,
    List<String>? materials,
    List<int>? genders,
  }) = _ProductFilterEntity;

  factory ProductFilterEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductFilterEntityFromJson(json);
}
