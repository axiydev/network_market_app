import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:network_app/model/product/product_model.dart';
import 'package:network_app/model/product/int_to_string_converter.dart';
part 'product_wrapper.freezed.dart';
part 'product_wrapper.g.dart';

@freezed
class ProductWrapper with _$ProductWrapper {
  factory ProductWrapper({
    @Default(<Product>[]) List<Product> products,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'total') @IntToStringConverterNumber() int? total,
    @JsonKey(name: 'skip') int? skip,
    @JsonKey(name: 'limit') int? limit,
  }) = _ProductWrapper;

  factory ProductWrapper.fromJson(Map<String, dynamic> json) =>
      _$ProductWrapperFromJson(json);
}
