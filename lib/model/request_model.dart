class RequestBodyModel {
  String? title;
  String? userId;
  RequestBodyModel({required this.userId, required this.title});

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'title': title};
  }
}
