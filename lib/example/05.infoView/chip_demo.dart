import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> list = ["banana", "Apple", "Lemon"];

  String actionChip = "None";

  List<String> _selected = ["banana"];
  String _choice = "Apple";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText(
        "Chip",
      ),
      CardMargin(
          padding: 10,
          // 自动换行
          child: Wrap(
            spacing: 12, // 组件的间距
            runSpacing: 30, // 行间距
            children: <Widget>[
              Chip(
                label: Text("Item A"),
              ),
              Chip(
                label: Text("Item B", style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.blue,
              ),
              Chip(
                label: Text("Item C", style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.orange,
                avatar: Icon(Icons.pause_circle_outline),
              ),
              Chip(
                  label: Text("Item D", style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.lightBlue,
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "http://spider.nosdn.127.net/37fb8626a2558c99bd7cbbe423a8e5f6.jpeg"),
                  )),
              Chip(
                label: Text("Item A"),
                onDeleted: () {},
                deleteIconColor: Colors.redAccent,
                deleteButtonTooltipMessage: "删除",
              ),
            ],
          )),
      MyText(
        "Chip 应用增删",
      ),
      CardMargin(
          padding: 10,
          child: Row(children: <Widget>[
            Wrap(
                spacing: 8,
                runSpacing: 20,
                children: list.map((v) {
                  return Chip(
                    label: Text(v),
                    onDeleted: () {
                      setState(() {
                        list.remove(v);
                      });
                    },
                  );
                }).toList()),
            Container(
              padding: EdgeInsets.only(left: 30),
              height: 40,
              // width: 40,
              child: FloatingActionButton(
                  child: Icon(Icons.restore),
                  onPressed: () {
                    setState(() {
                      list = ["banana", "Apple", "Lemon"];
                      _selected = ["banana"];
                      actionChip = "None";
                    });
                  }),
            ),
          ])),
      MyText(
        "动作碎片 ActionChip",
      ),
      MyText(
        "注: 此演示 chip 都使用共同数据列表",
      ),
      CardMargin(
        padding: 15,
        child: Row(children: <Widget>[
          MyText("选择的是 : $actionChip "),
          Wrap(
              spacing: 8,
              runSpacing: 20,
              children: list
                  .map((v) => ActionChip(
                        label: Text(v),
                        onPressed: () {
                          setState(() {
                            actionChip = v;
                          });
                        },
                      ))
                  .toList())
        ]),
      ),
      MyText(
        "过滤碎片 FilterChip",
      ),
      MyText(
        "FilterChip : $_selected",
      ),
      CardMargin(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Wrap(
              spacing: 8,
              runSpacing: 20,
              children: list
                  .map((v) => FilterChip(
                        label: Text(v),
                        selected: _selected.contains(v), // 判断列表是否包含 v, 包含则 true
                        onSelected: (value) {
                          print(value);
                          setState(() {
                            if (_selected.contains(v)) {
                              _selected.remove(v);
                            } else {
                              _selected.add(v);
                            }
                          });
                        },
                      ))
                  .toList())
        ]),
      ),
      MyText(
        "选择碎片 ChoiceChip",
      ),
      CardMargin(
        padding: 5,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Theme(
            data: ThemeData(primaryColor: Colors.yellow[300]),
            child: Wrap(
                spacing: 10,
                children: list
                    .map((v) => ChoiceChip(
                          selectedColor: Colors.black,
                          selectedShadowColor: Colors.transparent, // 透明 s
                          label: Text(v),
                          selected: _choice == v,
                          onSelected: (value) {
                            setState(() {
                              _choice = v;
                            });
                          },
                        ))
                    .toList()),
          ),
        ]),
      ),
    ]));
  }
}

class ChipDocument extends StatelessWidget {
  final String chipdocument = """
  <div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:228px;">属性</td>
			<td style="width:571px;">说明</td>
		</tr><tr><td style="width:228px;">avatar</td>
			<td style="width:571px;">在芯片标签之前显示的小部件</td>
		</tr><tr><td style="width:228px;">label</td>
			<td style="width:571px;">标签文字</td>
		</tr><tr><td style="width:228px;">labelStyle</td>
			<td style="width:571px;">标签文字样式</td>
		</tr><tr><td style="width:228px;">labelPadding</td>
			<td style="width:571px;">标签文字内间距</td>
		</tr><tr><td style="width:228px;">deleteIcon</td>
			<td style="width:571px;">添加图标按钮 与onDeleted 配合使用，单独使用无效</td>
		</tr><tr><td style="width:228px;">onDeleted</td>
			<td style="width:571px;">图标按钮监听</td>
		</tr><tr><td style="width:228px;">deleteIconColor</td>
			<td style="width:571px;">deleteIcon颜色</td>
		</tr><tr><td style="width:228px;">deleteButtonTooltipMessage</td>
			<td style="width:571px;">deleteIcon长按文字解说</td>
		</tr><tr><td style="width:228px;">shape</td>
			<td style="width:571px;">形状</td>
		</tr><tr><td style="width:228px;">clipBehavior</td>
			<td style="width:571px;">裁剪&nbsp; 默认Clip.none（不裁剪）</td>
		</tr><tr><td style="width:228px;">backgroundColor</td>
			<td style="width:571px;">背景颜色</td>
		</tr><tr><td style="width:228px;">padding</td>
			<td style="width:571px;">内间距</td>
		</tr><tr><td style="width:228px;">materialTapTargetSize</td>
			<td style="width:571px;">配置tap目标的最小大小</td>
		</tr><tr><td style="width:228px;">elevation</td>
			<td style="width:571px;">阴影高度</td>
		</tr><tr><td style="width:228px;">shadowColor</td>
			<td style="width:571px;">阴影颜色</td>
		</tr></tbody></table></div>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("数据定义"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s-54-Chip0.png"),
        MyText("Chip"),
        InkWellPictrue(
          "http://media.xiexblog.top/PicGo/2020-03-09-s-12-Chip1.png",
        ),
        MyText("增删"),
        InkWellPictrue(
          "http://media.xiexblog.top/PicGo/2020-03-09-s-21-Chip2.png",
        ),
        MyText("ActionChip"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s-11-Chip3.png"),
        MyText(
          "FilterChip",
        ),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s-17-Chip4.png"),
        MyText("ChoiceChip"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s-57-Divider.png"),
        MyHtml(chipdocument)
      ],
    );
  }
}
