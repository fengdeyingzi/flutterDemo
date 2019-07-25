import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'BaseConfig.dart';

class AlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: _AlertDialogWidget(),
      theme: ThemeData(
        primaryColor: ThemeColor
      ),
    );
  }
}

class _AlertDialogWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AlertDialogWidgetState();
  }
}

class _AlertDialogWidgetState extends State<_AlertDialogWidget> {
  bool isShowDialog = false;

  _getDialog(BuildContext context){
    return CupertinoAlertDialog(
      title: Text("测试对话框"),
      content: Text("这是一个对话框内容，啦啦啦~~~~~"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: Text("确定"),
          isDefaultAction: true,
          isDestructiveAction: true,
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        CupertinoDialogAction(
          child: Text("返回"),
          isDestructiveAction: false,
          isDefaultAction: true,
          onPressed: (){
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("测试对话框"),
      ),
      body: Center(
        child: CupertinoButton(
            child: Text("点击弹出ios对话框"),
            onPressed: () {
              setState(() {
                showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return _getDialog(context);
                    });
              });
            }),
      )
    );
      
      
  }
}
