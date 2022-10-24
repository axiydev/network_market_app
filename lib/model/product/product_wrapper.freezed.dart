// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductWrapper _$ProductWrapperFromJson(Map<String, dynamic> json) {
  return _ProductWrapper.fromJson(json);
}

/// @nodoc
mixin _$ProductWrapper {
  List<Product> get products =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'total')
  @IntToStringConverterNumber()
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'skip')
  int? get skip => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductWrapperCopyWith<ProductWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductWrapperCopyWith<$Res> {
  factory $ProductWrapperCopyWith(
          ProductWrapper value, $Res Function(ProductWrapper) then) =
      _$ProductWrapperCopyWithImpl<$Res, ProductWrapper>;
  @useResult
  $Res call(
      {List<Product> products,
      @JsonKey(name: 'total') @IntToStringConverterNumber() int? total,
      @JsonKey(name: 'skip') int? skip,
      @JsonKey(name: 'limit') int? limit});
}

/// @nodoc
class _$ProductWrapperCopyWithImpl<$Res, $Val extends ProductWrapper>
    implements $ProductWrapperCopyWith<$Res> {
  _$ProductWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductWrapperCopyWith<$Res>
    implements $ProductWrapperCopyWith<$Res> {
  factory _$$_ProductWrapperCopyWith(
          _$_ProductWrapper value, $Res Function(_$_ProductWrapper) then) =
      __$$_ProductWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products,
      @JsonKey(name: 'total') @IntToStringConverterNumber() int? total,
      @JsonKey(name: 'skip') int? skip,
      @JsonKey(name: 'limit') int? limit});
}

/// @nodoc
class __$$_ProductWrapperCopyWithImpl<$Res>
    extends _$ProductWrapperCopyWithImpl<$Res, _$_ProductWrapper>
    implements _$$_ProductWrapperCopyWith<$Res> {
  __$$_ProductWrapperCopyWithImpl(
      _$_ProductWrapper _value, $Res Function(_$_ProductWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_ProductWrapper(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductWrapper implements _ProductWrapper {
  _$_ProductWrapper(
      {final List<Product> products = const <Product>[],
      @JsonKey(name: 'total') @IntToStringConverterNumber() this.total,
      @JsonKey(name: 'skip') this.skip,
      @JsonKey(name: 'limit') this.limit})
      : _products = products;

  factory _$_ProductWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ProductWrapperFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'total')
  @IntToStringConverterNumber()
  final int? total;
  @override
  @JsonKey(name: 'skip')
  final int? skip;
  @override
  @JsonKey(name: 'limit')
  final int? limit;

  @override
  String toString() {
    return 'ProductWrapper(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductWrapper &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductWrapperCopyWith<_$_ProductWrapper> get copyWith =>
      __$$_ProductWrapperCopyWithImpl<_$_ProductWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductWrapperToJson(
      this,
    );
  }
}

abstract class _ProductWrapper implements ProductWrapper {
  factory _ProductWrapper(
      {final List<Product> products,
      @JsonKey(name: 'total') @IntToStringConverterNumber() final int? total,
      @JsonKey(name: 'skip') final int? skip,
      @JsonKey(name: 'limit') final int? limit}) = _$_ProductWrapper;

  factory _ProductWrapper.fromJson(Map<String, dynamic> json) =
      _$_ProductWrapper.fromJson;

  @override
  List<Product> get products;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'total')
  @IntToStringConverterNumber()
  int? get total;
  @override
  @JsonKey(name: 'skip')
  int? get skip;
  @override
  @JsonKey(name: 'limit')
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_ProductWrapperCopyWith<_$_ProductWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
