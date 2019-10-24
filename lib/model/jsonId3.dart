import 'dart:convert';

import 'package:part_json/model/jsonData.dart';

class JsonId3 {
  String name;
  List<Data> data;
  JsonId3({this.name, this.data});
  factory JsonId3.fromJson(Map<String, dynamic> json) {
      // var listArticles = json["articles"] as List;
    return JsonId3(
        name: json['name'],
        data: List<Data>.from(json["data"].map((data) {
          return Data.fromJson(data);
        })));
  }
}
