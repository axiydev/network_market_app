import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_app/model/request_model.dart';
import 'package:network_app/model/response_model.dart';
import 'package:network_app/service/dio_network_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final title = TextEditingController();
  final id = TextEditingController();
  final apiDervice = DioNetworkService();
  void onPublish() async {
    try {
      if (title.text.isEmpty) return;
      final body = RequestBodyModel(userId: id.text, title: title.text);
      ResponseModel? response = await apiDervice.addPost(body);
      showModalBottomSheet(
          context: context,
          builder: (context) => Text(
                response!.userId.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ));
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoTextField(
              controller: title,
              placeholder: 'title',
            ),
            CupertinoTextField(
              controller: id,
              placeholder: 'id',
            ),
            CupertinoButton.filled(
                onPressed: onPublish, child: const Text('publish'))
          ],
        ),
      )),
    );
  }
}
