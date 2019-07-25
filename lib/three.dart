

import 'package:flutter/material.dart';

class DefaultTabControllerSample extends StatelessWidget{
  List<Tab> myTabs = <Tab>[
    Tab(text: "tab1",
    ),
    Tab(text: "tab2",),
    Tab(text: "tab3",)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: DefaultTabController(length: myTabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: Text("test tabbar"),
              bottom: TabBar(tabs: myTabs,
                  indicatorWeight:5
              ),

            ),
            body: TabBarView(children: myTabs.map((Tab tab){
              return Center(child: Text(tab.text),);
            }).toList()),
      )),
    );
  }
}