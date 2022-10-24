class ResponseModel {
  int? id;
  String? title;
  String? userId;

  ResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    userId = json['userId'];
  }
}
