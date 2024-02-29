import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@Freezed(toJson: true)
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    List<String>? categories,
    String? imageUrl,
    String? id,
    String? title,
    double? rate,
    double? price,
    List<double>? availableSizes,
    List<int>? colors,
    List<String>? materials,
    List<int>? genders,
    String? deliveryAndReturns,
    String? description,
    DateTime? createdAt,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
