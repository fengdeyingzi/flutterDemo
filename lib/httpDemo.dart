//import 'dart:_http';
//import 'dart:_internal';

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';


class HttpDemoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: _HttpDemoScreen(),
    );
  }
}




class _HttpDemoScreen extends StatefulWidget {






  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HttpDemoState();
  }


}


class _HttpDemoState extends State<_HttpDemoScreen>  with WidgetsBindingObserver{
  Future<Map> mData;
  String msg = null;
  String info = null;




  Future<Map> _getInfo(String url) async {
    String result = null;
    Map data2 = null;
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    if (response.statusCode == HttpStatus.OK) {
      var json = await response.transform(utf8.decoder).join();

      var text = """
        {
        "code": 200,
        "msg": "获取成功",
        "time": "1556355608",
        "data": [
          {
            "id": 1,
            "is_img": 0,
            "is_go": 0,
            "title": "欢迎各位加入我们的大家庭",
            "content": null,
            "create_time": 1554354708,
            "img": "0"
          }
        ]
      }
      """;
      var data = jsonDecode(json);
       data2 = jsonDecode(text);
      result = data["msg"];
      setState(() {
        msg = data2["msg"];
      });
      print("msg = " + result);
      print("id = " + data["data"][0]["id"].toString());
      if(data2["data"][0]["content"] == null){
        print("content is null");
      }
      else
        print("content not's null");
    } else {
      result = "error";
    }

    return data2;
  }

  //初始化
  @override
  void initState() {
    // TODO: implement initState
   _getInfo("http://www.xcarcar.com/api/v1/bbs_notice");

    super.initState();
  }

//  销毁
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
//    setState(() {
//      _lastLifecyleState = state;
//    });
  if(state == AppLifecycleState.paused){

  }
  else if(state == AppLifecycleState.resumed){

  }
  else if(state == AppLifecycleState.inactive){

  }
  else if(state == AppLifecycleState.suspending){

  }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('http连接测试'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: <Widget>[
          new Center(
            
            child: new RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text('返回'),
            ),
            
          ),

          new Center(
            child: new Text(msg),
          )
        ],
      ),
    );;
  }

}