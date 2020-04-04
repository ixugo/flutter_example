import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class SnackbarDemo extends StatefulWidget {
  @override
  _SnackbarDemoState createState() => _SnackbarDemoState();
}

class _SnackbarDemoState extends State<SnackbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText("Snackbar"),
        MyText("具有可选操作的轻量级消息提示，在屏幕的底部显示"),
        CardMargin(
          padding: 10,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("123"),
                      action: SnackBarAction(
                          label: "OK",
                          onPressed: () {
                            // 无需任何内容, 点击会自动消失
                          }),
                    ));
                  },
                  child: Text("SnackBar"),
                )
              ]),
        ),
      ]),
    );
  }
}

class SnackbarDocument extends StatelessWidget {
  final String snackbardocument = """
<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td style="width:226px;">content</td>
			<td style="width:573px;">内容</td>
		</tr><tr><td style="width:226px;">backgroundColor</td>
			<td style="width:573px;">背景颜色</td>
		</tr><tr><td style="width:226px;">elevation</td>
			<td style="width:573px;">阴影高度</td>
		</tr><tr><td style="width:226px;">shape</td>
			<td style="width:573px;">形状</td>
		</tr><tr><td style="width:226px;">behavior</td>
			<td style="width:573px;">
			<p>位置</p>

			<p>SnackBarBehavior.fixed // 固定在底部</p>

			<p>behavior:SnackBarBehavior.floating,//显示在[底部导航栏]上方</p>
			</td>
		</tr><tr><td style="width:226px;">action</td>
			<td style="width:573px;">动作（通常放按钮）</td>
		</tr><tr><td style="width:226px;">duration</td>
			<td style="width:573px;">停留时间，如一秒：Duration(seconds: 1),</td>
		</tr><tr><td style="width:226px;">animation</td>
			<td style="width:573px;">显示/隐藏动画</td>
		</tr></tbody></table>

""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Snackbar"),
        InkWellPictrue("http://img.golang.space/PicGo/2020-03-04-Snackbar.png"),
        MyHtml(snackbardocument),
      ],
    );
  }
}
