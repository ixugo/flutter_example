import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class ScaffolDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<ScaffolDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), title: Text("Explore")),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), title: Text("History")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
        ]),
        body: Text("Scaffold"),
      ),
    );
  }
}

class ScaffolDocument extends StatelessWidget {
  final String document = """
<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:227px;">属性</td>
			<td style="width:572px;">说明</td>
		</tr><tr><td style="width:227px;">appBar</td>
			<td style="width:572px;">头部导航栏</td>
		</tr><tr><td style="width:227px;">body</td>
			<td style="width:572px;">主体</td>
		</tr><tr><td style="width:227px;">floatingActionButton</td>
			<td style="width:572px;">悬浮按钮</td>
		</tr><tr><td style="width:227px;">floatingActionButtonLocation</td>
			<td style="width:572px;">悬浮按钮位置</td>
		</tr><tr><td style="width:227px;">floatingActionButtonAnimator</td>
			<td style="width:572px;">悬浮按钮动画</td>
		</tr><tr><td style="width:227px;">persistentFooterButtons</td>
			<td style="width:572px;">显示在底部的一组按钮</td>
		</tr><tr><td style="width:227px;">drawer</td>
			<td style="width:572px;">侧拉抽屉菜单</td>
		</tr><tr><td style="width:227px;">endDrawer</td>
			<td style="width:572px;">侧拉抽屉菜单 与上面属性相反</td>
		</tr><tr><td style="width:227px;">bottomNavigationBar</td>
			<td style="width:572px;">显示在底部的导航栏</td>
		</tr><tr><td style="width:227px;">bottomSheet</td>
			<td style="width:572px;">要显示的持久底部工作表</td>
		</tr><tr><td style="width:227px;">backgroundColor</td>
			<td style="width:572px;">背景颜色</td>
		</tr><tr><td style="width:227px;">resizeToAvoidBottomPadding</td>
			<td style="width:572px;">已废弃</td>
		</tr><tr><td style="width:227px;">resizeToAvoidBottomInset</td>
			<td style="width:572px;">为true时：浮动小部件自动调整，以避免弹出键盘时被遮盖</td>
		</tr><tr><td style="width:227px;">primary</td>
			<td style="width:572px;">默认true</td>
		</tr><tr><td style="width:227px;">drawerDragStartBehavior</td>
			<td style="width:572px;">默认DragStartBehavior.start</td>
		</tr><tr><td style="width:227px;">extendBody</td>
			<td style="width:572px;">默认false</td>
		</tr><tr><td style="width:227px;">drawerScrimColor</td>
			<td style="width:572px;">抽屉打开时用来遮盖主要内容的涂布颜色</td>
		</tr></tbody></table>""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Scaffold"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-10-s51-scaffold.png"),
        MyHtml(document)
      ],
    );
  }
}
