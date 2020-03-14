import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

enum Option {
  Cancel,
  Ok,
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "请点击按钮";

  Future _openAlertDialog() async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false, // 设置不可点击其它区域
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("SimpleDialog"),
            content: Text("你确定退出吗?"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context, Option.Cancel);
                },
                child: Text("Cancel"),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, Option.Ok);
                  },
                  child: Text("Ok"))
            ],
          );
        });

    switch (action) {
      case Option.Ok:
        setState(() {
          _choice = "ok";
        });
        break;
      case Option.Cancel:
        setState(() {
          _choice = "cancel";
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText(
          "AlertDialog",
        ),
        MyText("一个会中断用户操作的对话框，需要用户确认"),
        CardMargin(
          padding: 10,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyText("选了 $_choice"),
                SizedBox(width: 24),
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text("Open AlertDialog"),
                ),
              ]),
        ),
      ]),
    );
  }
}

class AlertDialogDocument extends StatelessWidget {
  final String alertdialogdemo = """
  <div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:219px;">属性</td>
			<td style="width:580px;">说明</td>
		</tr><tr><td style="width:219px;">title</td>
			<td style="width:580px;">标题</td>
		</tr><tr><td style="width:219px;">titlePadding</td>
			<td style="width:580px;">标题内边距</td>
		</tr><tr><td style="width:219px;">titleTextStyle</td>
			<td style="width:580px;">标题文字样式</td>
		</tr><tr><td style="width:219px;">content</td>
			<td style="width:580px;">内容</td>
		</tr><tr><td style="width:219px;">contentPadding</td>
			<td style="width:580px;">内容 内边距&nbsp; 默认EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),</td>
		</tr><tr><td style="width:219px;">contentTextStyle</td>
			<td style="width:580px;">内容文字样式</td>
		</tr><tr><td style="width:219px;">actions</td>
			<td style="width:580px;">对话框下边的Widget组件集合</td>
		</tr><tr><td style="width:219px;">backgroundColor</td>
			<td style="width:580px;">背景颜色</td>
		</tr><tr><td style="width:219px;">elevation</td>
			<td style="width:580px;">阴影高度</td>
		</tr><tr><td style="width:219px;">semanticLabel</td>
			<td style="width:580px;">&nbsp;</td>
		</tr><tr><td style="width:219px;">shape</td>
			<td style="width:580px;">形状</td>
		</tr></tbody></table></div>
  """;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(
          "AlertDialog",
        ),
        MyText(
          "调用",
          alignment: Alignment.centerLeft,
        ),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-04-AlertDialog1.png"),
        MyText(
          "方法",
          alignment: Alignment.centerLeft,
        ),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-04-AlertDialog2.png"),
        MyHtml(alertdialogdemo),
      ],
    );
  }
}
