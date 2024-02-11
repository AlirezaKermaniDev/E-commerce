// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_products_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturedProductsEntity _$FeaturedProductsEntityFromJson(
    Map<String, dynamic> json) {
  return _FeaturedProductsEntity.fromJson(json);
}

/// @nodoc
mixin _$FeaturedProductsEntity {
  int? get gradientType => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedProductsEntityCopyWith<FeaturedProductsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedProductsEntityCopyWith<$Res> {
  factory $FeaturedProductsEntityCopyWith(FeaturedProductsEntity value,
          $Res Function(FeaturedProductsEntity) then) =
      _$FeaturedProductsEntityCopyWithImpl<$Res, FeaturedProductsEntity>;
  @useResult
  $Res call(
      {int? gradientType,
      String? imageUrl,
      String? title,
      int? rate,
      double? price});
}

/// @nodoc
class _$FeaturedProductsEntityCopyWithImpl<$Res,
        $Val extends FeaturedProductsEntity>
    implements $FeaturedProductsEntityCopyWith<$Res> {
  _$FeaturedProductsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientType = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? rate = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      gradientType: freezed == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedProductsEntityImplCopyWith<$Res>
    implements $FeaturedProductsEntityCopyWith<$Res> {
  factory _$$FeaturedProductsEntityImplCopyWith(
          _$FeaturedProductsEntityImpl value,
          $Res Function(_$FeaturedProductsEntityImpl) then) =
      __$$FeaturedProductsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? gradientType,
      String? imageUrl,
      String? title,
      int? rate,
      double? price});
}

/// @nodoc
class __$$FeaturedProductsEntityImplCopyWithImpl<$Res>
    extends _$FeaturedProductsEntityCopyWithImpl<$Res,
        _$FeaturedProductsEntityImpl>
    implements _$$FeaturedProductsEntityImplCopyWith<$Res> {
  __$$FeaturedProductsEntityImplCopyWithImpl(
      _$FeaturedProductsEntityImpl _value,
      $Res Function(_$FeaturedProductsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientType = freezed,
    Object? imageUrl = freezed,
    Object? title = freezed,
    Object? rate = freezed,
    Object? price = freezed,
  }) {
    return _then(_$FeaturedProductsEntityImpl(
      gradientType: freezed == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedProductsEntityImpl implements _FeaturedProductsEntity {
  const _$FeaturedProductsEntityImpl(
      {this.gradientType, this.imageUrl, this.title, this.rate, this.price});

  factory _$FeaturedProductsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedProductsEntityImplFromJson(json);

  @override
  final int? gradientType;
  @override
  final String? imageUrl;
  @override
  final String? title;
  @override
  final int? rate;
  @override
  final double? price;

  @override
  String toString() {
    return 'FeaturedProductsEntity(gradientType: $gradientType, imageUrl: $imageUrl, title: $title, rate: $rate, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedProductsEntityImpl &&
            (identical(other.gradientType, gradientType) ||
                other.gradientType == gradientType) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, gradientType, imageUrl, title, rate, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedProductsEntityImplCopyWith<_$FeaturedProductsEntityImpl>
      get copyWith => __$$FeaturedProductsEntityImplCopyWithImpl<
          _$FeaturedProductsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedProductsEntityImplToJson(
      this,
    );
  }
}

abstract class _FeaturedProductsEntity implements FeaturedProductsEntity {
  const factory _FeaturedProductsEntity(
      {final int? gradientType,
      final String? imageUrl,
      final String? title,
      final int? rate,
      final double? price}) = _$FeaturedProductsEntityImpl;

  factory _FeaturedProductsEntity.fromJson(Map<String, dynamic> json) =
      _$FeaturedProductsEntityImpl.fromJson;

  @override
  int? get gradientType;
  @override
  String? get imageUrl;
  @override
  String? get title;
  @override
  int? get rate;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedProductsEntityImplCopyWith<_$FeaturedProductsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
