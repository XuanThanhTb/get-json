import 'dart:convert';

class Data {
  String Q;
  String A;
  Data({this.A, this.Q});
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      Q: json['Q'],
      A: json['A'],
    );
  }
}
