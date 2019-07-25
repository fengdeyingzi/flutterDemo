import 'package:flutter/material.dart';

import 'NavigatorDemo.dart';
import 'next.dart';
import 'three.dart';
import 'httpDemo.dart';
import 'LoadingDemo.dart';
import 'SizeBox.dart';
import 'AlertDialogDemo.dart';

void main() {
  runApp(MyApp());
//  runApp(HttpDemoScreen());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _state(){
    setState((){
      _counter = 1;
    });
  }

  void gotoNewActivity() {
    //
//    Navigator.push(
//      context,
//      new MaterialPageRoute(builder:(context){
//        return new NextScreen();
//      }),
//    );
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return new DefaultTabControllerSample();
    }));
  }

  void _incrementCounter() {
    //状态变化 调用setState方法
    setState(() {
      // This call to setState tells the Flutter framework that something has这个调用设置状态告诉摆动框架
      // changed in this State, which causes it to rerun the build method below改变这种状态,这导致它重新运行th
      // so that the display can reflect the updated values. If we changed这样显示可以反映更新后的值
      // _counter without calling setState(), then the build method would not  be _counter没有调用设置状态(),那么成矿
      // called again, and so nothing would appear to happen. 再次调用,所以不会出现哈佩
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
//        actions: <Widget>[Text("this "), Text("that")],
      ),
      body: ListView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: <Widget>[Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Row(
              children: [
                Text(
                  'You have pushed the button this many times:',
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'this${_counter}',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ],
                ),
                Text(
                  "this is test21644",
                ),
                Row(
                  children: <Widget>[Text("haha")],
                )
              ],
            ),
            Text(
              "this is test2",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                //编辑框
//minLines: 2,
                controller: TextEditingController(text: "this is flutter"),
                obscureText: false,
                //提示文字
                decoration: InputDecoration(
                    fillColor: Colors.white, filled: true, hintText: "hello"),
              ),
            ),
//            Padding(
//              padding: new EdgeInsets.fromLTRB(50, 50,50,50),
//              child: Image.network("http://bbs2.yzjlb.net/upload/avatar/000/1.png?1526380560",
//                width:120,
//                height: 120,
//
//              ) ,
//            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icon_old.png",
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: new EdgeInsets.all(8),
              child: MaterialButton(
                color: Colors.blue,
                minWidth: double.infinity, //宽度占满
                textColor: Colors.white,
                child: new Text('点我跳转界面'),
                onPressed: () {
                  // ...
                  gotoNewActivity();
                },
              ),

            ),
            MaterialButton(
              child: Text("测试loading"),
              minWidth: double.infinity,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new LoadingApp();
                }));
              },
            ),
            MaterialButton(
              child: Text("测试SizedBox"),
              minWidth: double.infinity,
              onPressed: (){

              },
            ),
            MaterialButton(
              child: Text("测试对话框"),
              minWidth: double.infinity,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new AlertDialogApp();
                }));
              },
            ),
            MaterialButton(
              child: Text("测试CupertinoNavigationBar"),
              minWidth: double.infinity,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new NavigatorApp();
                }));
              },
            ),
            MaterialButton(
              child: Text("测试http获取"),
              minWidth: double.infinity,
              onPressed: (){
                Navigator.push(context, new MaterialPageRoute(builder: (context) {
                  return new HttpDemoScreen();
                }));
              },
            ),

/*
            ListView(
              scrollDirection: Axis.vertical,

              children: <Widget>[
                Container(
                  child:  Text("this is list item"),

                ),



                Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                )
                ,
                Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                )
                ,
                Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                ),
                Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                ),
                Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                )
                ,
                Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                )
                , Padding(
                  padding: new EdgeInsets.all(30),
                  child: Text("this is list item"),
                )

              ],
            )
            */
          ],
        )],

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
