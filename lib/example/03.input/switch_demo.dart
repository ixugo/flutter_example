import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = true;
  bool _switchListTileItemB = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("Switch"),
      MyText("On/off 用于切换一个单一状态"),
      CardMargin(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Switch(
                //   bool _switchItemA = true;
                value: _switchItemA,
                onChanged: (value) {
                  setState(() {
                    _switchItemA = value;
                  });
                }),
            Text(
              _switchItemA ? "😋" : "😳",
            ),
          ])),
      MyText("SwitchListTile"),
      CardMargin(
        child: SwitchListTile(
            //   bool _switchListTileItemB = true;
            value: _switchListTileItemB,
            title: Text("SwitchListTile"),
            subtitle: Text("描述"),
            secondary: Icon(
                _switchListTileItemB ? Icons.visibility : Icons.visibility_off),
            selected: _switchListTileItemB,
            onChanged: (value) {
              setState(() {
                _switchListTileItemB = value;
              });
            }),
      )
    ]));
  }
}

class SwitchDocument extends StatelessWidget {
  final String switchdocument = """
<div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td style="width:226px;">value</td>
			<td style="width:573px;">当前开关状态 布尔值</td>
		</tr><tr><td style="width:226px;">onChanged</td>
			<td style="width:573px;">监听（开关状态改变时调用）</td>
		</tr><tr><td style="width:226px;">activeColor</td>
			<td style="width:573px;">打开 状态 轨道 和 按钮颜色</td>
		</tr><tr><td style="width:226px;">activeTrackColor</td>
			<td style="width:573px;">打开 状态轨道颜色</td>
		</tr><tr><td style="width:226px;">inactiveThumbColor</td>
			<td style="width:573px;">关闭 状态按钮颜色</td>
		</tr><tr><td style="width:226px;">inactiveTrackColor</td>
			<td style="width:573px;">关闭 状态轨道颜色</td>
		</tr><tr><td style="width:226px;">activeThumbImage</td>
			<td style="width:573px;">打开 状态下按钮图片</td>
		</tr><tr><td style="width:226px;">inactiveThumbImage</td>
			<td style="width:573px;">关闭&nbsp;状态下按钮图片</td>
		</tr><tr><td style="width:226px;">materialTapTargetSize</td>
			<td style="width:573px;">配置tap目标的最小大小</td>
		</tr><tr><td style="width:226px;">dragStartBehavior</td>
			<td style="width:573px;">确定处理拖动启动行为的方式</td>
		</tr></tbody></table></div>
""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Switch"),
        InkWellPictrue("http://img.golang.space/PicGo/2020-03-04-switch.png"),
        MyText("SwitchListTile"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-switchListTile.png"),
        MyHtml(
          switchdocument,
        )
      ],
    );
  }
}
