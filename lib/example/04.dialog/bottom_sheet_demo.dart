import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  String _option = "none";

  _openBottomSheet() {
    Scaffold.of(context).showBottomSheet((BuildContext context) {
      return BottomAppBar(
          child: Container(
              height: 60.0,
              width: double.infinity,
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Row(children: <Widget>[
                Icon(Icons.pause_circle_outline),
                SizedBox(width: 16),
                Text("01:30/ 03:30"),
                Expanded(
                    child: Text(
                  "only you - 罗家英",
                  textAlign: TextAlign.right,
                ))
              ])));
    });
  }

  Future _openModelBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: 200.0,
              child: Column(children: <Widget>[
                ListTile(
                    title: Text("Option A"),
                    onTap: () {
                      Navigator.pop(context, "A");
                    }),
                ListTile(
                    title: Text("Option B"),
                    onTap: () {
                      Navigator.pop(context, "B");
                    }),
                ListTile(
                    title: Text("Option C"),
                    onTap: () {
                      Navigator.pop(context, "C");
                    }),
              ]));
        });
    if (option != null) {
      setState(() {
        _option = option;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyText("BottomSheet"),
            MyText("是一个从屏幕底部滑起的列表"),
            MyText("选择了 $_option"),
            CardMargin(
              padding: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: _openBottomSheet,
                      child: Text("Open BottomSheet"),
                    ),
                    SizedBox(width: 24),
                    RaisedButton(
                      onPressed: _openModelBottomSheet,
                      child: Text("Model BottomSheet"),
                    ),
                  ]),
            ),
          ]),
    );
  }
}

class BottomSheetDocument extends StatelessWidget {
  final String bottomsheetdocument = """
  <div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td style="width:226px;">context</td>
			<td style="width:573px;">上下文</td>
		</tr><tr><td style="width:226px;">builder</td>
			<td style="width:573px;">WidgetBuilder</td>
		</tr><tr><td style="width:226px;">backgroundColor</td>
			<td style="width:573px;">背景颜色</td>
		</tr><tr><td style="width:226px;">elevation</td>
			<td style="width:573px;">阴影</td>
		</tr><tr><td style="width:226px;">shape</td>
			<td style="width:573px;">形状</td>
		</tr><tr><td style="width:226px;">isScrollControlled</td>
			<td style="width:573px;">滚动控制&nbsp; &nbsp;默认false</td>
		</tr></tbody></table></div>
  """;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("BottomSheet"),
        MyText("调用", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-bottomSheet1.png"),
        MyText("方法", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-bottomSheet2.png"),
        MyHtml(bottomsheetdocument)
      ],
    );
  }
}
