import 'package:part_json/model/jsonId1.dart';
import 'package:part_json/model/jsonId2.dart';
import 'package:part_json/model/jsonId3.dart';

class SumData {
  JsonId1 id1;
  JsonId2 id2;
  JsonId3 id3;
  SumData({this.id1, this.id2, this.id3});
  factory SumData.fromJson(Map<String, dynamic> json) {
  
    return SumData(
 
      id1: JsonId1.fromJson(json['id1']),
      id2: JsonId2.fromJson(json['id2']),
      id3: JsonId3.fromJson(json['id3']),
    );
  }
}
