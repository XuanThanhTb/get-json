import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:part_json/model/SumJson.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Part Json',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: SendData(),
      ),
    );
  }
}

class SendData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SendDataState();
  }
}

class SendDataState extends State<SendData> {
  @override
  void initState() {
    super.initState();
    debugger();
    _loadDataId1();
  }

  var test = 'data';

  Future _loadDataId1() async {
    debugger();
    String jsonString = await rootBundle.loadString("lib/dataJson.json");
    final jsonData = json.decode(jsonString);
    SumData dataId1 = SumData.fromJson(
      jsonData,
    );
    debugger();
    setState(() {
      debugger();
      test = dataId1.id2.data.toString();

      debugger();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: GestureDetector(
          child: Text('test'),
          onTap: () {},
        ));
  }
}
