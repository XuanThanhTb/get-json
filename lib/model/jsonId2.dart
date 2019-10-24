import 'dart:convert';

class JsonId2{
  String name;
  String data;
  JsonId2({this.name, this.data});
  factory JsonId2.fromJson(Map<String, dynamic> json){
    return JsonId2(
      name: json['name'],
      data: json['data'],
    );
  }
}