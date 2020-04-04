import 'package:flutter/cupertino.dart';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPanelItem({this.headerText, this.body, this.isExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();
    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
          headerText: "Item A",
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Text("Content for panel A"),
            width: double.infinity,
          ),
          isExpanded: true),
      ExpansionPanelItem(
          headerText: "Item B",
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Text("Content for panel B"),
            width: double.infinity,
          ),
          isExpanded: false),
      ExpansionPanelItem(
          headerText: "Item A",
          body: Container(
            padding: EdgeInsets.all(16.0),
            child: Text("Content for panel C"),
            width: double.infinity,
          ),
          isExpanded: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText("ExpansionPanel"),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: ExpansionPanelList(
            // 点击事件 参数 1 表示被点击的索引,和收缩状态
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                for (int i = 0; i < _expansionPanelItems.length; i++) {
                  _expansionPanelItems[i].isExpanded = false;
                }
                _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
              });
            },
            children: _expansionPanelItems.map((ExpansionPanelItem v) {
              return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      child: Text(v.headerText),
                      padding: EdgeInsets.all(16.0),
                    );
                  },
                  body: v.body,
                  isExpanded: v.isExpanded);
            }).toList(),
          ),
        )
      ]),
    );
  }
}

class ExpansionPanelDocument extends StatelessWidget {
  final String expansionpaneldocument = """
<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td colspan="2" style="width:226px;">
			<p><strong><span style="color:#f33b45;">ExpansionPanelList</span></strong></p>
			</td>
		</tr><tr><td style="width:226px;">children</td>
			<td style="width:573px;">&lt;ExpansionPanel&gt;[]&nbsp; 集合</td>
		</tr><tr><td style="width:226px;">expansionCallback</td>
			<td style="width:573px;">回调</td>
		</tr><tr><td style="width:226px;">animationDuration</td>
			<td style="width:573px;">动画，默认kThemeAnimationDuration</td>
		</tr><tr><td colspan="2" style="width:226px;">
			<p><span style="color:#f33b45;"><strong>ExpansionPanel</strong></span></p>
			</td>
		</tr><tr><td style="width:226px;">headerBuilder</td>
			<td style="width:573px;">标题</td>
		</tr><tr><td style="width:226px;">body</td>
			<td style="width:573px;">内容</td>
		</tr><tr><td style="width:226px;">isExpanded</td>
			<td style="width:573px;">闭合状态</td>
		</tr><tr><td style="width:226px;">canTapOnHeader</td>
			<td style="width:573px;">是否点击面板的标题将扩展/折叠它（true整个标题可点击，false只有三角图标可点击）</td>
		</tr></tbody></table>
""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("ExpansionPanel"),
        MyText("调用", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-expansionPanel1.png"),
        MyText("列表参数初始化", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-expansionPanel2.png"),
        MyText("参数类", alignment: Alignment.centerLeft),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-04-expansionPanel3.png"),
        MyHtml(expansionpaneldocument)
      ],
    );
  }
}
