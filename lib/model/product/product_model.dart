import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    String? title,
    String? description,
    dynamic price,
    double? discountPercentage,
    double? rating,
    dynamic stock,
    String? brand,
    String? category,
    String? thumbnail,
    @Default(<String>[]) List<String?> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
