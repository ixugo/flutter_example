import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  int _radioGroupB = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("Radio"),
      // 单选按钮
      MyText("允许用户从一组中选择一个选项"),

      CardMargin(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Radio(
              value: 0,
              //  int _radioGroupA = 0;
              groupValue: _radioGroupA,
              // 默认颜色
              activeColor: Theme.of(context).accentColor,
              onChanged: (value) {
                setState(() {
                  _radioGroupA = value;
                });
              },
            ),
            Radio(
              value: 1,
              groupValue: _radioGroupA,
              activeColor: Theme.of(context).accentColor,
              onChanged: (value) {
                setState(() {
                  _radioGroupA = value;
                });
              },
            ),
            SizedBox(width: 20),
            Text(_radioGroupA.toString())
          ])),

      MyText("RadioListTile"),
      CardMargin(
          child: Column(children: <Widget>[
        Text("RadioGroupValue:$_radioGroupB",
            style: Theme.of(context).accentTextTheme.body1),
        RadioListTile(
          value: 0,
          groupValue: _radioGroupB,
          title: Text("Radio Item 1"),
          subtitle: Text("描述"),
          secondary: Icon(Icons.filter_1),
          selected: _radioGroupB == 0,
          onChanged: (value) {
            setState(() {
              _radioGroupB = value;
            });
          },
        ),
        RadioListTile(
          value: 1,
          groupValue: _radioGroupB,
          title: Text("Radio Item 2"),
          subtitle: Text("描述"),
          secondary: Icon(Icons.filter_2),
          selected: _radioGroupB == 1,
          onChanged: (value) {
            setState(() {
              _radioGroupB = value;
            });
          },
        ),
      ]))
    ]));
  }
}

class RadioDocument extends StatelessWidget {
  final String radiodocument = """
  <div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:227px;">属性</td>
			<td style="width:572px;">说明</td>
		</tr><tr><td colspan="2" style="width:227px;"><span style="color:#f33b45;"><strong>Radio&nbsp;单选按钮</strong></span></td>
		</tr><tr><td style="width:227px;">value</td>
			<td style="width:572px;">此单选按钮表示的值（可设定为id）</td>
		</tr><tr><td style="width:227px;">groupValue</td>
			<td style="width:572px;">此组单选按钮的当前选定值</td>
		</tr><tr><td style="width:227px;">onChanged</td>
			<td style="width:572px;">监听</td>
		</tr><tr><td style="width:227px;">activeColor</td>
			<td style="width:572px;">选择此单选按钮时使用的颜色</td>
		</tr><tr><td style="width:227px;">materialTapTargetSize</td>
			<td style="width:572px;">配置tap目标的最小大小</td>
		</tr><tr><td colspan="2" style="width:227px;">
			<p><span style="color:#f33b45;"><strong>RadioListTile&nbsp; 单选按钮</strong></span></p>
			</td>
		</tr><tr><td style="width:227px;">value</td>
			<td style="width:572px;">此单选按钮表示的值（可设定为id）</td>
		</tr><tr><td style="width:227px;">groupValue</td>
			<td style="width:572px;">此组单选按钮的当前选定值</td>
		</tr><tr><td style="width:227px;">onChanged</td>
			<td style="width:572px;">监听</td>
		</tr><tr><td>activeColor</td>
			<td>选中此复选框时要使用的颜色</td>
		</tr><tr><td>title</td>
			<td>列表主标题</td>
		</tr><tr><td>subtitle</td>
			<td>列表副标题</td>
		</tr><tr><td>isThreeLine</td>
			<td>默认false</td>
		</tr><tr><td>dense</td>
			<td>此列表平铺是否是垂直密集列表的一部分。</td>
		</tr><tr><td>secondary</td>
			<td>显示在复选框前面的小部件</td>
		</tr><tr><td>selected</td>
			<td>选中后文字高亮，默认false</td>
		</tr><tr><td>controlAffinity</td>
			<td>
			<p>控件相对于文本的位置，</p>

			<p>默认&nbsp;ListTileControlAffinity.platform</p>
			</td>
		</tr></tbody></table></div>""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Radio"),
        InkWellPictrue("http://img.golang.space/PicGo/mkw5k.png"),
        MyText("RadioListTile"),
        InkWellPictrue("http://img.golang.space/PicGo/kng5p.png"),
        MyHtml(radiodocument)
      ],
    );
  }
}
