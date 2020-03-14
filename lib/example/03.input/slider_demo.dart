import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("Slider"),
      MyText("允许用户通过滑动滑块来从一系列值中选择"),
      CardMargin(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Column(children: <Widget>[
            // 不使用 Row 则占整行
            Slider(
                value: _sliderItemA,
                min: 0,
                max: 10,
                divisions: 10, // 分割 10 块
                label: '${_sliderItemA.toInt()}', // 选中第几块时显示
                onChanged: (value) {
                  setState(() {
                    _sliderItemA = value;
                  });
                }),
            Text("SliderValue $_sliderItemA"),
          ]),
        ]),
      ),
    ]));
  }
}

class SliderDocument extends StatelessWidget {
  final String sliderdocument = """
  <div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:225px;">属性</td>
			<td style="width:574px;">说明</td>
		</tr><tr><td style="width:225px;">value</td>
			<td style="width:574px;">当前值&nbsp; 默认 0 -- 1 之间</td>
		</tr><tr><td style="width:225px;">onChanged</td>
			<td style="width:574px;">滑动监听</td>
		</tr><tr><td style="width:225px;">onChangeStart</td>
			<td style="width:574px;">滑动前监听</td>
		</tr><tr><td style="width:225px;">onChangeEnd</td>
			<td style="width:574px;">滑动后监听</td>
		</tr><tr><td style="width:225px;">min</td>
			<td style="width:574px;">最小值&nbsp; 默认 0</td>
		</tr><tr><td style="width:225px;">max</td>
			<td style="width:574px;">最大值&nbsp; 默认 1</td>
		</tr><tr><td style="width:225px;">divisions</td>
			<td style="width:574px;">分段个数</td>
		</tr><tr><td style="width:225px;">label</td>
			<td style="width:574px;">滑动时 显示的文字&nbsp; （不设置divisions属性 不显示）</td>
		</tr><tr><td style="width:225px;">activeColor</td>
			<td style="width:574px;">滑块轨道活动部分的颜色</td>
		</tr><tr><td style="width:225px;">inactiveColor</td>
			<td style="width:574px;">滑块轨道不活动部分的颜色</td>
		</tr><tr><td style="width:225px;">semanticFormatterCallback</td>
			<td style="width:574px;">&nbsp;</td>
		</tr></tbody></table></div>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Slider"),
        InkWellPictrue("http://media.xiexblog.top/PicGo/2020-03-04-Slider.png"),
        MyHtml(sliderdocument)
      ],
    );
  }
}
