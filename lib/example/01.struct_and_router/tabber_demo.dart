import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class TabbarDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<TabbarDemo>
    with SingleTickerProviderStateMixin {
  // 控制器
  TabController _tabController;
  int currentIndex;

  // 初始化
  @override
  void initState() {
    super.initState();
    print('初始化 数据...');
    _tabController = new TabController(
        vsync: this, //固定写法
        length: 6 //指定tab长度
        )
      ..addListener(() {
        // 监听事件
        // setState(() {
        //   currentIndex = _tabController.index;
        // });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 500,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                  // 下边框线 样式
                  indicatorSize: TabBarIndicatorSize.label,
                  // 下边框线颜色
                  indicatorColor: Colors.white,
                  // 控制器
                  controller: _tabController,
                  // 是否可以左右滑动
                  isScrollable: true,
                  tabs: <Widget>[
                Tab(text: '推荐'),
                Tab(text: '丽人'),
                Tab(text: '旅行'),
                Tab(text: '电影'),
                Tab(text: '结婚'),
                Tab(text: '购物'),
              ])),
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Text("1"),
              Text("2"),
              Text("3"),
              Text("4"),
              Text("5"),
              Text("6"),
            ],
          ),
        ));
  }
}

class TabbarDocument extends StatelessWidget {
  final String document = """
  <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:227px;">属性</td>
			<td style="width:572px;">说明</td>
		</tr><tr><td style="width:227px;">animation</td>
			<td style="width:572px;">官方：一个动画，其值表示<a href="https://docs.flutter.kim/material/TabBar-class.html" rel="nofollow">TabBar</a>所选选项卡指示器的当前位置以及<a href="https://docs.flutter.kim/material/TabBar-class.html" rel="nofollow">TabBar</a>&nbsp;和<a href="https://docs.flutter.kim/material/TabBarView-class.html" rel="nofollow">TabBarView的scrollOffsets</a>。</td>
		</tr><tr><td style="width:227px;">index</td>
			<td style="width:572px;">当前tab索引，//跳转后执行</td>
		</tr><tr><td style="width:227px;">indexIsChanging</td>
			<td style="width:572px;">动画是时为true</td>
		</tr><tr><td style="width:227px;">length</td>
			<td style="width:572px;">tab总数</td>
		</tr><tr><td style="width:227px;">offset</td>
			<td style="width:572px;">动画的值和索引之间的差异。偏移量必须在-1.0和1.0之间</td>
		</tr><tr><td style="width:227px;">previousIndex</td>
			<td style="width:572px;">前tab索引，////跳转后执行</td>
		</tr></tbody></table>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Tabbar"),
        MyText(
          "1 页面必须实现 SingleTickerProviderStateMixin",
          alignment: Alignment.centerLeft,
        ),
        MyText(
          "2 初始化时实例化控制器,并指定长度",
          alignment: Alignment.centerLeft,
        ),
        MyText(
          "3 tabbar组件中指定 控制器为上面实例化的控制器",
          alignment: Alignment.centerLeft,
        ),
        MyText(
          "4 tabbarview 组件中指定控制器",
          alignment: Alignment.centerLeft,
        ),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-10-s53-tabbar.png"),
        MyHtml(document)
      ],
    );
  }
}
