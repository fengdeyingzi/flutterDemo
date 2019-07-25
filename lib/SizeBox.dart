
import 'package:flutter/material.dart';

import 'BaseConfig.dart';

class SizeBoxApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "SizeBox",
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: ThemeColor,
      ),
      home: SizeBoxWidget(),
    );
  }



}


/**
 * 支持状态变化的组件
 */
class SizeBoxWidget extends StatefulWidget{



  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SizeBoxStateWidget();
  }



}

class _SizeBoxStateWidget extends State<SizeBoxWidget>{
  String text = "测试";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("SizeBox"),
      ),
      body: SizedBox(
        height: 250,
        child: Text(text),
      ),
    );
  }

  _set(String text){

    setState(() {
      this.text = text;
    });
  }

}