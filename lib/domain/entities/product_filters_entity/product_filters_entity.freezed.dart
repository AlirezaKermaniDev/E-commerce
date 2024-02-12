// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_filters_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductFilterEntity _$ProductFilterEntityFromJson(Map<String, dynamic> json) {
  return _ProductFilterEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductFilterEntity {
  List<String>? get categories => throw _privateConstructorUsedError;
  double? get rate => throw _privateConstructorUsedError;
  List<double>? get availableSizes => throw _privateConstructorUsedError;
  List<int>? get colors => throw _privateConstructorUsedError;
  List<String>? get materials => throw _privateConstructorUsedError;
  List<int>? get genders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductFilterEntityCopyWith<ProductFilterEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFilterEntityCopyWith<$Res> {
  factory $ProductFilterEntityCopyWith(
          ProductFilterEntity value, $Res Function(ProductFilterEntity) then) =
      _$ProductFilterEntityCopyWithImpl<$Res, ProductFilterEntity>;
  @useResult
  $Res call(
      {List<String>? categories,
      double? rate,
      List<double>? availableSizes,
      List<int>? colors,
      List<String>? materials,
      List<int>? genders});
}

/// @nodoc
class _$ProductFilterEntityCopyWithImpl<$Res, $Val extends ProductFilterEntity>
    implements $ProductFilterEntityCopyWith<$Res> {
  _$ProductFilterEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? rate = freezed,
    Object? availableSizes = freezed,
    Object? colors = freezed,
    Object? materials = freezed,
    Object? genders = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      availableSizes: freezed == availableSizes
          ? _value.availableSizes
          : availableSizes // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      materials: freezed == materials
          ? _value.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genders: freezed == genders
          ? _value.genders
          : genders // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductFilterEntityImplCopyWith<$Res>
    implements $ProductFilterEntityCopyWith<$Res> {
  factory _$$ProductFilterEntityImplCopyWith(_$ProductFilterEntityImpl value,
          $Res Function(_$ProductFilterEntityImpl) then) =
      __$$ProductFilterEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? categories,
      double? rate,
      List<double>? availableSizes,
      List<int>? colors,
      List<String>? materials,
      List<int>? genders});
}

/// @nodoc
class __$$ProductFilterEntityImplCopyWithImpl<$Res>
    extends _$ProductFilterEntityCopyWithImpl<$Res, _$ProductFilterEntityImpl>
    implements _$$ProductFilterEntityImplCopyWith<$Res> {
  __$$ProductFilterEntityImplCopyWithImpl(_$ProductFilterEntityImpl _value,
      $Res Function(_$ProductFilterEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = freezed,
    Object? rate = freezed,
    Object? availableSizes = freezed,
    Object? colors = freezed,
    Object? materials = freezed,
    Object? genders = freezed,
  }) {
    return _then(_$ProductFilterEntityImpl(
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      availableSizes: freezed == availableSizes
          ? _value._availableSizes
          : availableSizes // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      materials: freezed == materials
          ? _value._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genders: freezed == genders
          ? _value._genders
          : genders // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductFilterEntityImpl implements _ProductFilterEntity {
  const _$ProductFilterEntityImpl(
      {final List<String>? categories,
      this.rate,
      final List<double>? availableSizes,
      final List<int>? colors,
      final List<String>? materials,
      final List<int>? genders})
      : _categories = categories,
        _availableSizes = availableSizes,
        _colors = colors,
        _materials = materials,
        _genders = genders;

  factory _$ProductFilterEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductFilterEntityImplFromJson(json);

  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? rate;
  final List<double>? _availableSizes;
  @override
  List<double>? get availableSizes {
    final value = _availableSizes;
    if (value == null) return null;
    if (_availableSizes is EqualUnmodifiableListView) return _availableSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _colors;
  @override
  List<int>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _materials;
  @override
  List<String>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _genders;
  @override
  List<int>? get genders {
    final value = _genders;
    if (value == null) return null;
    if (_genders is EqualUnmodifiableListView) return _genders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductFilterEntity(categories: $categories, rate: $rate, availableSizes: $availableSizes, colors: $colors, materials: $materials, genders: $genders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFilterEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            const DeepCollectionEquality()
                .equals(other._availableSizes, _availableSizes) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality().equals(other._genders, _genders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      rate,
      const DeepCollectionEquality().hash(_availableSizes),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_genders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFilterEntityImplCopyWith<_$ProductFilterEntityImpl> get copyWith =>
      __$$ProductFilterEntityImplCopyWithImpl<_$ProductFilterEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductFilterEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductFilterEntity implements ProductFilterEntity {
  const factory _ProductFilterEntity(
      {final List<String>? categories,
      final double? rate,
      final List<double>? availableSizes,
      final List<int>? colors,
      final List<String>? materials,
      final List<int>? genders}) = _$ProductFilterEntityImpl;

  factory _ProductFilterEntity.fromJson(Map<String, dynamic> json) =
      _$ProductFilterEntityImpl.fromJson;

  @override
  List<String>? get categories;
  @override
  double? get rate;
  @override
  List<double>? get availableSizes;
  @override
  List<int>? get colors;
  @override
  List<String>? get materials;
  @override
  List<int>? get genders;
  @override
  @JsonKey(ignore: true)
  _$$ProductFilterEntityImplCopyWith<_$ProductFilterEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
