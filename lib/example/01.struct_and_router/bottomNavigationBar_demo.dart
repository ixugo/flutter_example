import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0; // 设置激活标签
  void _onTabHandler(int index) {
    // 默认返回 index, 调用 setState 来刷新页面
    setState(() => {this._currentIndex = index});
  }

  final List list = [
    Text("底部导航栏 0"),
    Text("底部导航栏 1"),
    Text("底部导航栏 2"),
    Text("底部导航栏 3"),
  ];

  Widget bottomNavigationBar1() {
    return Scaffold(
      // 核心代码
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, //数量超过4时, 类型发生变化, 必须声明
          fixedColor: Colors.black, // 激活颜色
          currentIndex: _currentIndex, // 激活状态
          onTap: _onTabHandler, // 点击事件

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), title: Text("Explore")),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), title: Text("History")),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text("List")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("My")),
          ]),
      body: list[this._currentIndex],
    );
  }

  Widget bottomNavigationBar2() {
    return Scaffold(
      // 核心代码

      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellowAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      // 浮动按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 底部导航栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        // 浮动按钮对应的缺角
        shape: CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.history),
                color: Colors.white,
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
            ]),
      ),
      body: list[this._currentIndex],
    );
  }

  @override
  Widget build(BuildContext context) {
    // 框架所需
    return Column(children: <Widget>[
      Container(
          height: 200,
          margin: EdgeInsets.all(20),
          child: bottomNavigationBar1()),
      Container(
          height: 200,
          margin: EdgeInsets.all(20),
          child: bottomNavigationBar2()),
    ]);
  }
}

class BottomNavigationBarDocument extends StatelessWidget {
  final String document = """
  <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:225px;">属性</td>
			<td style="width:574px;">说明</td>
		</tr><tr><td style="width:225px;">type</td>
			<td style="width:574px;">
			<p>风格</p>

			<p>BottomNavigationBarType.fixed（<span style="color:#7c79e5;">超过4个按键一定要加这个，说明是多个按钮</span>）</p>

			<p>BottomNavigationBarType.shifting</p>
			</td>
		</tr><tr><td style="width:225px;">items</td>
			<td style="width:574px;">List&lt;BottomNavigationBarItem&gt;[]&nbsp; &nbsp;底部导航条按钮集合</td>
		</tr><tr><td style="width:225px;">onTap</td>
			<td style="width:574px;">选中变化回调函数</td>
		</tr><tr><td style="width:225px;">currentIndex</td>
			<td style="width:574px;">索引值，默认0&nbsp; &nbsp;默认选中第几个</td>
		</tr><tr><td style="width:225px;">elevation</td>
			<td style="width:574px;">默认8</td>
		</tr><tr><td style="width:225px;">iconSize</td>
			<td style="width:574px;">图片大小</td>
		</tr><tr><td colspan="2" style="width:225px;"><span style="color:#f33b45;"><strong>BottomNavigationBarType.fixed&nbsp; 风格属性</strong></span></td>
		</tr><tr><td style="width:225px;">fixedColor</td>
			<td style="width:574px;">选中的颜色</td>
		</tr><tr><td style="width:225px;">backgroundColor</td>
			<td style="width:574px;">背景颜色</td>
		</tr><tr><td colspan="2" style="width:225px;"><span style="color:#f33b45;"><strong>BottomNavigationBarType.shifting&nbsp; 风格属性</strong></span></td>
		</tr><tr><td style="width:225px;">selectedItemColor</td>
			<td style="width:574px;">选中时颜色</td>
		</tr><tr><td style="width:225px;">unselectedItemColor</td>
			<td style="width:574px;">未选中时颜色</td>
		</tr><tr><td style="width:225px;">selectedIconTheme</td>
			<td style="width:574px;">&nbsp;</td>
		</tr><tr><td style="width:225px;">unselectedIconTheme</td>
			<td style="width:574px;">&nbsp;</td>
		</tr><tr><td style="width:225px;">selectedFontSize</td>
			<td style="width:574px;">默认14</td>
		</tr><tr><td style="width:225px;">unselectedFontSize</td>
			<td style="width:574px;">默认12</td>
		</tr><tr><td style="width:225px;">selectedLabelStyle</td>
			<td style="width:574px;">&nbsp;</td>
		</tr><tr><td style="width:225px;">unselectedLabelStyle</td>
			<td style="width:574px;">&nbsp;</td>
		</tr><tr><td style="width:225px;">showSelectedLabels</td>
			<td style="width:574px;">默认true</td>
		</tr><tr><td style="width:225px;">showUnselectedLabels</td>
			<td style="width:574px;">&nbsp;</td>
		</tr></tbody></table>""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("BottomNavigationBar"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-10-s27-bottomNavigationbar.png"),
        MyText("BottomAppBar"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-12-s18-bottomnavigation2.png"),
        MyHtml(document)
      ],
    );
  }
}
