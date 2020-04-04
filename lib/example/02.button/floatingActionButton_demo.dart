import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButtonDemo = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text("add"),
    elevation: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      MyText("FloatingActionButton"),
      MyText("FloatingActionButton.extended"),
      CardMargin(
        child: Container(
            height: 150,
            child: Scaffold(
              floatingActionButton: _floatingActionButtonExtended, // 浮动按钮
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat, // 位置
              bottomNavigationBar: BottomAppBar(
                child: Container(height: 80.0),
                shape: CircularNotchedRectangle(), // 将按钮插入底部导航栏
              ),
            )),
      ),
      MyText("两者主要默认形状不同\n有底部菜单栏使用前者\n无则使用后者"),
    ]);
  }
}

class FloatingActionButtonDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("复选框"),
        InkWellPictrue("http://img.golang.space/PicGo/mhmcf.png"),
      ],
    );
  }
}
