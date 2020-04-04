import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class AppbarDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<AppbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.all(20),
      child: Scaffold(
        appBar: AppBar(
          //标题不居中
          centerTitle: false,
          // 左边按钮
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('我是leading按钮');
            },
          ),
        ),
      ),
    );
  }
}

class AppbarDocument extends StatelessWidget {
  final String document = """
<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td style="width:226px;">leading</td>
			<td style="width:573px;">
			<p>在标题前面显示的一个控件，在首页通常显示应用的 logo或菜单；</p>

			<p>在其他界面通常显示为返回按钮</p>
			</td>
		</tr><tr><td style="width:226px;">automaticallyImplyLeading</td>
			<td style="width:573px;">
			<p>默认true</p>

			<p>leading为null，并且堆栈中存在页面，则自动推导为BackButton。</p>

			<p>leading不为null，则此参数无效</p>

			<p>&nbsp;</p>

			<p>为false时不会推导，使中间/标题拉伸</p>
			</td>
		</tr><tr><td style="width:226px;">title</td>
			<td style="width:573px;">标题，通常显示为当前界面的标题文字，可以放组件</td>
		</tr><tr><td style="width:226px;">actions</td>
			<td style="width:573px;">通常使用 IconButton 来表示，可以放按钮组</td>
		</tr><tr><td style="width:226px;">flexibleSpace</td>
			<td style="width:573px;">可伸展、折叠部件</td>
		</tr><tr><td style="width:226px;">bottom</td>
			<td style="width:573px;">通常放 tabBar，标题下面显示一个 Tab 导航栏</td>
		</tr><tr><td style="width:226px;">elevation</td>
			<td style="width:573px;">阴影高度</td>
		</tr><tr><td style="width:226px;">shape</td>
			<td style="width:573px;">形状</td>
		</tr><tr><td style="width:226px;">backgroundColor</td>
			<td style="width:573px;">导航背景颜色</td>
		</tr><tr><td style="width:226px;">brightness</td>
			<td style="width:573px;">亮度</td>
		</tr><tr><td style="width:226px;">iconTheme</td>
			<td style="width:573px;">图标样式</td>
		</tr><tr><td style="width:226px;">actionsIconTheme</td>
			<td style="width:573px;">actions样式</td>
		</tr><tr><td style="width:226px;">textTheme</td>
			<td style="width:573px;">文字样式</td>
		</tr><tr><td style="width:226px;">primary</td>
			<td style="width:573px;">默认true</td>
		</tr><tr><td style="width:226px;">centerTitle</td>
			<td style="width:573px;">标题是否居中显示</td>
		</tr><tr><td style="width:226px;">titleSpacing</td>
			<td style="width:573px;">默认NavigationToolbar.kMiddleSpacing</td>
		</tr><tr><td style="width:226px;">toolbarOpacity</td>
			<td style="width:573px;">应用工具栏透明度</td>
		</tr><tr><td style="width:226px;">bottomOpacity</td>
			<td style="width:573px;">应用栏底部透明度</td>
		</tr></tbody></table>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("AppBar"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-10-s47-appbar.png"),
        MyHtml(document)
      ],
    );
  }
}
