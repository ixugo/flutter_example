import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class DrawerDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.all(20),
      child: Scaffold(
        body: Text("点击标题栏左右两个按钮"),
        appBar: AppBar(
          //标题不居中
          centerTitle: false,
        ),
        drawer: SizedBox(
            width: 200,
            child: Drawer(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Drawer \n宽度 200',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )),
        endDrawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor, // 顶部背景色
              ),
              accountName: Text("username"),
              accountEmail: Text("@qq.com"), // 用户名和邮箱
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "http://media.xiexblog.top/PicGo/20200211165820.png"),
              ), // 用户头像
            ),
            ListTile(
              title: Text(
                // 标题

                "Message",
                textAlign: TextAlign.right,
              ),
              trailing: // 右侧内容, 左侧为 leading
                  Icon(Icons.message, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context), // 关闭当前窗口
            ),
            ListTile(
              title: Text(
                // 标题
                "Favorite",
                textAlign: TextAlign.right,
              ),
              trailing: // 右侧内容, 左侧为 leading
                  Icon(Icons.favorite, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context), // 关闭当前窗口
            ),
            ListTile(
              title: Text(
                // 标题
                "Settings",
                textAlign: TextAlign.right,
              ),
              trailing: // 右侧内容, 左侧为 leading
                  Icon(Icons.settings, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context), // 关闭当前窗口
            )
          ]),
        ),
      ),
    );
  }
}

class DrawerDocument extends StatelessWidget {
  final String document = """
  <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:224px;">属性</td>
			<td style="width:575px;">
			<p>说明</p>
			</td>
		</tr><tr><td colspan="2" style="width:224px;"><span style="color:#f33b45;"><strong>Drawer&nbsp;</strong></span></td>
		</tr><tr><td style="width:224px;">elevation</td>
			<td style="width:575px;">背景高度</td>
		</tr><tr><td style="width:224px;">child</td>
			<td style="width:575px;">子组件</td>
		</tr><tr><td style="width:224px;">semanticLabel</td>
			<td style="width:575px;">标签</td>
		</tr><tr><td colspan="2" style="width:224px;"><span style="color:#f33b45;"><strong>UserAccountsDrawerHeader</strong></span></td>
		</tr><tr><td style="width:224px;">decoration</td>
			<td style="width:575px;">头部装饰</td>
		</tr><tr><td style="width:224px;">margin</td>
			<td style="width:575px;">外边距&nbsp; 默认8.0</td>
		</tr><tr><td style="width:224px;">currentAccountPicture</td>
			<td style="width:575px;">主图像</td>
		</tr><tr><td style="width:224px;">otherAccountsPictures</td>
			<td style="width:575px;">附图像</td>
		</tr><tr><td style="width:224px;">accountName</td>
			<td style="width:575px;">标题</td>
		</tr><tr><td style="width:224px;">accountEmail</td>
			<td style="width:575px;">副标题</td>
		</tr><tr><td style="width:224px;">onDetailsPressed</td>
			<td style="width:575px;">点击监听</td>
		</tr></tbody></table>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Drawer"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-10-s22-drawer1.png"),
        MyText("UserAccountsDrawerHeader"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-10-s15-drawer2.png"),
        MyHtml(document)
      ],
    );
  }
}
