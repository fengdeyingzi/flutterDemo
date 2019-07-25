
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class NavigatorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      title: "。。。。。。。。。",
      home: _NavigatorWidget(),
    );
  }

}


class _NavigatorWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _NavigatorWidgetState();
  }
  
}


class _NavigatorWidgetState extends State<_NavigatorWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Row(
          children: <Widget>[

            Icon(Icons.arrow_back_ios),
            Text("back")
          ],
        ),
        middle: Text("iOS NavigationBar"),
        trailing: Icon(Icons.border_color),
        
      ),
      body: Center(
        child: Text("hello flutter."),
      ),
      bottomNavigationBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.access_alarms),

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.border_color),
        )
      ]),
    );
  }
  
}


