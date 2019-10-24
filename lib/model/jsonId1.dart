class JsonId1{
  String name;
  String data;
  JsonId1({this.name, this.data});
  factory JsonId1.fromJson(Map<String, dynamic> json){
    return JsonId1(
      name: json['name'],
      data: json['data'],
    );
  }
}