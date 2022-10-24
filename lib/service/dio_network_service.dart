import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:network_app/model/request_model.dart';
import 'package:network_app/model/response_model.dart';

class DioNetworkService {
  Dio? _dio;
  static final _instance = DioNetworkService._private();
  factory DioNetworkService() => _instance;
  DioNetworkService._private() {
    try {
      _dio = Dio(BaseOptions(
          baseUrl: _Urls.base,
          connectTimeout: 15000,
          receiveTimeout: 5000,
          sendTimeout: 15000))
        ..interceptors.add(_appHeaderInterceptor!);
      debugPrint('INITED DIO SRC');
    } catch (e) {
      log(e.toString());
    }
  }
  Future<ResponseModel?> addPost(RequestBodyModel body) async {
    try {
      var response = await _dio!
          .post<Map<String, dynamic>>(_Urls.addPost, data: body.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint(response.data.toString());
        return ResponseModel.fromJson(response.data!);
      }
    } catch (e) {
      log(e.toString());
    }
    return ResponseModel.fromJson({});
  }

  AppHeaderInterceptor? get _appHeaderInterceptor => AppHeaderInterceptor();

  AppTokenInterceptor? get _appTokenInterceptor => AppTokenInterceptor();
}

class AppHeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.data.addAll({'userId': '5'});
    super.onRequest(options, handler);
  }
}

class AppTokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['token'] = 'kalsdkklsjdlfkjskld';
    super.onRequest(options, handler);
  }
}

class _Urls {
  static const base = 'https://dummyjson.com';
  static const addPost = '/posts/add';
}
// void dp(Object object) {
//   if (kDebugMode) {
//     print(object);
//   }
// }
