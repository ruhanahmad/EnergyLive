import 'dart:convert';
import 'package:energylive/classes/dartClasses.dart' as model;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart' as mt;
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  model.Device? _device;
  bool isLoading = true;
  // List<device> devicesx = [];
  Future<model.Device> _fetchData() async {
    final response = await http.get(Uri.parse(
        'http://209.97.164.239:8080/c3WBIWiUzVlW-WkH_97eZmLCY507bnc7/project'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);

      _device = model.Device.fromJson(json);

      setState(() {
        widgets = _device!.widgets;
        tabs = widgets!.firstWhere((element) => element.type == "TABS").tabs;
        tabController = TabController(length: tabs!.length, vsync: this);
        isLoading = false;
      });
      return model.Device.fromJson(json);
    } else {
      throw Exception('Failed to load user');
    }
  }

  TabController? tabController;
  List<model.Widge>? widgets;
  List<model.Tab>? tabs;
  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Widget'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Builder(builder: (context) {
              return ListView(
                children: [
                  TabBar(
                    onTap: (index) {
                      print("iddd");
                      print(index);
                      setState(() {});
                    },
                    labelColor: Colors.black,
                    controller: tabController,
                    tabs: List.from(
                      tabs!.map(
                        (e) => mt.Tab(
                          text: e.label,
                          // child: Text(e.id.toString()),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: widgets!
                          .where((element) =>
                              element.tabId == tabController!.index)
                          .toList()
                          .length,
                      itemBuilder: (context, index) {
                        var tab = widgets!
                            .where((element) =>
                                element.tabId == tabController!.index)
                            .toList()[index];
                        if (tab.type == "GAUGE") {
                          return Container(
                            height: 200,
                            width: 200,
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  minimum: 0,
                                  maximum: 100,
                                  ranges: <GaugeRange>[
                                    GaugeRange(
                                      startValue: 0,
                                      endValue: 30,
                                      color: Colors.red,
                                    ),
                                    GaugeRange(
                                      startValue: 30,
                                      endValue: 70,
                                      color: Colors.yellow,
                                    ),
                                    GaugeRange(
                                      startValue: 70,
                                      endValue: 100,
                                      color: Colors.green,
                                    ),
                                  ],
                                  pointers: <GaugePointer>[
                                    NeedlePointer(
                                      value:double.tryParse( tab.pin.toString()) ??0,
                                      enableAnimation: true,
                                    ),
                                  ],
                                  annotations: <GaugeAnnotation>[
                                    GaugeAnnotation(
                                      //baki widget bhi aise bnao saray widget if laga kar
                                      widget: Text(
                                        '${double.tryParse( tab.pin.toString()) ??0}',
                                        style:const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      positionFactor: 0.5,
                                      angle: 90,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }
                        //smajh aai ? nh ae
                        if(tab.type=="LABELED_VALUE_DISPLAY")
                        {

                          return Text("${tab.pin}");
                        }
                        return Container();
                      },
                    ),
                  ),
                ],
              );
            }),
    );
  }
}
