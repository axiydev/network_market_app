import 'package:freezed_annotation/freezed_annotation.dart';

class IntToStringConverterNumber implements JsonConverter<String, int> {
  const IntToStringConverterNumber();
  @override
  String fromJson(int json) {
    return '$json';
  }

  @override
  int toJson(String object) {
    return int.parse(object);
  }
}
