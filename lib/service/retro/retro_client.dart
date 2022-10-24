import 'package:dio/dio.dart';
import 'package:network_app/model/product/product_model.dart';
import 'package:network_app/model/product/product_wrapper.dart';
import 'package:retrofit/retrofit.dart';

part 'retro_client.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class RetroClient {
  factory RetroClient(Dio dio, {String? baseUrl}) = _RetroClient;

  @GET('/products')
  Future<ProductWrapper> getProducts();

  @GET('/products/{id}')
  Future<Product> getProductUsingId(@Path('id') String id);
}
