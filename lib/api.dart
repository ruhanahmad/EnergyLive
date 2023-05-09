import 'dart:convert';
import 'package:energylive/classes/dartClasses.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart' as mt;


class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  // List<device> devicesx = [];
  Future <Device> _fetchData() async {
    final response = await http.get(Uri.parse('http://209.97.164.239:8080/c3WBIWiUzVlW-WkH_97eZmLCY507bnc7/project'));
if (response.statusCode == 200) {
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Device.fromJson(json);
  } else {
    throw Exception('Failed to load user');
  }
  }
var tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Widget'),
      ),
      body: FutureBuilder<Device>(
        future: _fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
              }
            final datassss = snapshot.data!;
                       var data = datassss.widgets.first;  
                  print(data.tabs!.length);
                  tabController = TabController(length: data.tabs!.length, vsync: this);
//y kya bnana tha ?
//tabbar baki isko style jo bhi karna hay chat gpt se karwai jao araam se
//woww acha mjy btana k ya single ticker mixin ka kya use h q use kia yaha py
// animtion k liye jo tab select karna per animation hoti hhay thek hay hogya or koi masla to nai ? OK ALLAH HAFIZ
//bh msla nh ab mai dykhti hu na thanks a lot
                  return TabBar(
                    labelColor: Colors.black,
                                controller: tabController,
                          tabs:List.from(data.tabs!.map((e) => mt.Tab(
                            text:  e.label,
                            )))
                                
                                );
                
                
     
          } 
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}



