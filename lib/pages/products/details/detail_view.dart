import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:network_app/model/product/product_model.dart';
import 'package:network_app/service/retro/retro_client.dart';

class DetailView extends StatelessWidget {
  final int? id;
  final String? name;
  DetailView({super.key, required this.id, required this.name});
  final retroClient = RetroClient(Dio(BaseOptions(
      connectTimeout: 15000, receiveTimeout: 5000, sendTimeout: 15000)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),
      ),
      body: FutureBuilder<Product>(
        future: retroClient.getProductUsingId(id.toString()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.hasError) {
            return const Center(
              child: Text('you have an error '),
            );
          }

          Product? product = snapshot.data;
          return Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 400,
                  child: PageView.builder(
                      itemCount: product!.images.length,
                      itemBuilder: (context, index) => Card(
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              imageUrl:
                                  product.images[index] ?? product.thumbnail!,
                              errorWidget: (context, url, error) =>
                                  const SizedBox.shrink(),
                              placeholder: (context, url) =>
                                  const SizedBox.shrink(),
                            ),
                          )),
                ),
                Flexible(child: Text(product.title ?? 'pro')),
                Flexible(child: Text(product.description ?? 'description'))
              ],
            ),
          );
        },
      ),
    );
  }
}
