import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

enum Options {
  A,
  B,
  C,
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _chooes = "请点击按钮";

  Future _openSimpleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
            title: Text("SimpleDialog"),
            children: Options.values.map((v) {
              return SimpleDialogOption(
                child: Text(v.toString()),
                onPressed: () {
                  Navigator.pop(context, v);
                },
              );
            }).toList());
      },
    );

    switch (option) {
      case Options.A:
        setState(() {
          _chooes = "A 😄";
        });
        break;
      case Options.B:
        setState(() {
          _chooes = "B 😊";
        });
        break;
      case Options.C:
        setState(() {
          _chooes = "C 😳";
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText("SimpleDialog"),
        MyText(" 简单的对话框为用户提供了多个选项之间的选择"),
        CardMargin(
          padding: 10,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyText("选择了 $_chooes"),
                FloatingActionButton(
                  onPressed: _openSimpleDialog,
                  child: Icon(Icons.format_list_numbered),
                ),
              ]),
        ),
      ]),
    );
  }
}

class SimpleDialogDocument extends StatelessWidget {
  final String simpledialogdemo = """
    <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:220px;">属性</td>
			<td style="width:579px;">说明</td>
		</tr><tr><td style="width:220px;">title</td>
			<td style="width:579px;">标题</td>
		</tr><tr><td style="width:220px;">titlePadding</td>
			<td style="width:579px;">标题内边距 默认EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),</td>
		</tr><tr><td style="width:220px;">children</td>
			<td style="width:579px;">子组件集合</td>
		</tr><tr><td style="width:220px;">contentPadding</td>
			<td style="width:579px;">内容内边距&nbsp;EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 16.0),</td>
		</tr><tr><td style="width:220px;">backgroundColor</td>
			<td style="width:579px;">背景颜色</td>
		</tr><tr><td style="width:220px;">elevation</td>
			<td style="width:579px;">阴阳高度</td>
		</tr><tr><td style="width:220px;">semanticLabel</td>
			<td style="width:579px;">&nbsp;</td>
		</tr><tr><td style="width:220px;">shape</td>
			<td style="width:579px;">形状</td>
		</tr></tbody></table>
  """;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(
          "SimpleDialog",
        ),
        MyText("调用", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-simpleDialog1.png"),
        MyText("方法", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-simpleDialog2.png"),
        MyHtml(simpledialogdemo)
      ],
    );
  }
}
