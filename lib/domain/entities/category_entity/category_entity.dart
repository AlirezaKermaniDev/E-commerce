import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';
part 'category_entity.g.dart';

@Freezed(toJson: true)
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    CategoryEntity? category,
    String? title,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);
}
