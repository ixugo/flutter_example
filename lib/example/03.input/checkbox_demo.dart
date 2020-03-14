import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool checkA = true;
  bool checkB = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("Checkbox"),
      MyText("允许用户从一组中选择多个选项"),
      // 复选框
      CardMargin(
        child: Checkbox(
            // bool checkA = true;
            value: checkA,
            // 激活后的颜色,默认由主题 accentColor 控制
            activeColor: Theme.of(context).accentColor,
            onChanged: (value) {
              setState(() {
                checkA = value;
              });
            }),
      ),

      MyText("CheckboxListTile"),

      // 带标签与图表的复选框
      CardMargin(
        child: CheckboxListTile(
          value: checkB,
          onChanged: (value) {
            setState(() {
              checkB = value;
            });
          },
          title: Text("Checkbox Item A"), // 标题
          subtitle: Text("Description"), // 描述
          secondary: Icon(Icons.bookmark), // 左侧图表
          selected: checkB, // 文字选中状态
        ),
      ),
    ]));
  }
}

class CheckboxDocument extends StatelessWidget {
  final String checkoutdocument = """
<div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td colspan="2" style="width:226px;">
			<p><span style="color:#3399ea;"><strong>Checkbox 复选框</strong></span></p>
			</td>
		</tr><tr><td style="width:226px;">value</td>
			<td style="width:573px;">是否选中此复选框</td>
		</tr><tr><td style="width:226px;">onChanged</td>
			<td style="width:573px;">监听&nbsp;当复选框的值应该更改时调用</td>
		</tr><tr><td style="width:226px;">tristate</td>
			<td style="width:573px;">默认false，如果为true，复选框的值可以为true、false或null。</td>
		</tr><tr><td style="width:226px;">activeColor</td>
			<td style="width:573px;">选中此复选框时要使用的颜色</td>
		</tr><tr><td style="width:226px;">checkColor</td>
			<td style="width:573px;">选中此复选框时用于复选图标的颜色</td>
		</tr><tr><td style="width:226px;">materialTapTargetSize</td>
			<td style="width:573px;">配置tap目标的最小大小</td>
		</tr><tr><td colspan="2" style="width:226px;">
			<p><span style="color:#3399ea;"><strong>CheckboxListTile 复选框</strong></span></p>
			</td>
		</tr><tr><td style="width:226px;">value</td>
			<td style="width:573px;">是否选中此复选框</td>
		</tr><tr><td style="width:226px;">onChanged</td>
			<td style="width:573px;">监听&nbsp;当复选框的值应该更改时调用</td>
		</tr><tr><td style="width:226px;">activeColor</td>
			<td style="width:573px;">选中此复选框时要使用的颜色</td>
		</tr><tr><td style="width:226px;">title</td>
			<td style="width:573px;">列表主标题</td>
		</tr><tr><td style="width:226px;">subtitle</td>
			<td style="width:573px;">列表副标题</td>
		</tr><tr><td style="width:226px;">isThreeLine</td>
			<td style="width:573px;">默认false</td>
		</tr><tr><td style="width:226px;">dense</td>
			<td style="width:573px;">此列表平铺是否是垂直密集列表的一部分。</td>
		</tr><tr><td style="width:226px;">secondary</td>
			<td style="width:573px;">显示在复选框前面的小部件</td>
		</tr><tr><td style="width:226px;">selected</td>
			<td style="width:573px;">选中后文字高亮，默认false</td>
		</tr><tr><td style="width:226px;">controlAffinity</td>
			<td style="width:573px;">
			<p>控件相对于文本的位置，</p>

			<p>默认&nbsp;ListTileControlAffinity.platform</p>
			</td>
		</tr></tbody></table></div>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Checkbox"),
        InkWellPictrue("http://media.xiexblog.top/PicGo/mhmcf.png"),
        MyText("CheckboxListTile"),
        InkWellPictrue("http://media.xiexblog.top/PicGo/kdwcz.png"),
        MyHtml(checkoutdocument)
      ],
    );
  }
}
