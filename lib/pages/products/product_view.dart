import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:network_app/model/product/product_model.dart';
import 'package:network_app/model/product/product_wrapper.dart';
import 'package:network_app/pages/products/details/detail_view.dart';
import 'package:network_app/service/retro/retro_client.dart';

// ignore: must_be_immutable
class ProductView extends StatelessWidget {
  ProductView({super.key});
  var client = RetroClient(Dio(BaseOptions(
      connectTimeout: 15000, receiveTimeout: 5000, sendTimeout: 15000)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('products'),
      ),
      body: SafeArea(
        child: FutureBuilder<ProductWrapper>(
          future: client.getProducts(),
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

            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.products.length,
                itemBuilder: (context, index) {
                  Product? product = snapshot.data!.products[index];
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailView(
                                  id: product.id,
                                  name: product.title,
                                )));
                      },
                      leading: CachedNetworkImage(
                        placeholder: (context, url) => const SizedBox.shrink(),
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        imageUrl: product.images[0] ?? product.thumbnail!,
                        errorWidget: (context, url, error) =>
                            const SizedBox.shrink(),
                      ),
                      title: Text(product.title ?? 'product'),
                      subtitle: Text(product.brand ?? 'brand'),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
