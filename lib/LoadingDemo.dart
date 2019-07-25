
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoadingApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "loading测试",
      home: LoadingWidget(),
    );
  }


}

class LoadingWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoadingWidgetState();
  }

}

class _LoadingWidgetState extends State<LoadingWidget>{

  double radius=10;
  bool animating = true;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("loading测试title"),

      ),
      body: Center(
        child: CupertinoActivityIndicator(
          radius:radius,
          animating:animating,
        ),
      ),
    );
  }

  void _setRadius(double radius){
    this.radius = radius;
    setState(() {

    });
  }

}

