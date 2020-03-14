import 'package:flutter/material.dart';

// 数据类
class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;
  ExpansionPanelItem({this.headerText, this.body, this.isExpanded});
}

// 实现类
class HelpDemo2 extends StatefulWidget {
  @override
  __HelpState createState() => __HelpState();
}

class __HelpState extends State<HelpDemo2> {
  // 初始化数据
  List<ExpansionPanelItem> _expansionPanelItems = <ExpansionPanelItem>[
    ExpansionPanelItem(
        headerText: "JD 如何开启/关闭小程序",
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Text("解决方案, 仅供参考, 如有需要, 请至反馈页面"),
          width: double.infinity,
        ),
        isExpanded: false),
    ExpansionPanelItem(
        headerText: "JD 如何分享给朋友",
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Text("解决方案, 仅供参考, 如有需要, 请至反馈页面"),
          width: double.infinity,
        ),
        isExpanded: false),
    ExpansionPanelItem(
        headerText: "手机号/QQ号/绑定与解绑JD",
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Text("解决方案, 仅供参考, 如有需要, 请至反馈页面"),
          width: double.infinity,
        ),
        isExpanded: false),
    ExpansionPanelItem(
        headerText: "小程序无法打开怎么办?",
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Text("解决方案, 仅供参考, 如有需要, 请至反馈页面"),
          width: double.infinity,
        ),
        isExpanded: false),
  ];

  @override
  Widget _question(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.all(18),
          child: Text("解决方案"),
        ),
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,

        backgroundColor: Colors.grey[50],

        title: Text(
          "帮助",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        // backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: _question(context),
    );
  }
}
