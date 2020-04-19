import 'dart:core';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/example/provider/my_provider.dart';
import 'package:flutter_example/utils/child_data_page_util.dart';
import 'package:flutter_example/utils/heightAndWidth.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'dataSource.dart';

// 第 9  页面

class Forwarding extends StatefulWidget {
  Forwarding(this.menu);
  final DataMenu menu;

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Forwarding> {
  final List myColors = [
    Colors.blueAccent,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.indigoAccent,
    Colors.cyanAccent,
    Colors.tealAccent,
    Colors.limeAccent,
    Colors.lightBlue,
  ];

  List imgs = [
    "http://media.xiexblog.top/PicGo/2020-03-09-s22-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg",
    "http://media.xiexblog.top/PicGo/2020-03-09-s22-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg",
    "http://media.xiexblog.top/PicGo/2020-03-09-s22-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    MyProvider model = Provider.of<MyProvider>(context);
    final List<TwoLevelPageData> listDemo = widget.menu.demo;
    final List<TwoLevelPageData> listDoc = widget.menu.document;

    List<TwoLevelPageData> _item1 = [listDemo[model.menuIndex]];
    List<TwoLevelPageData> _item2 = [listDoc[model.menuIndex]];

    // 首页
    // List<TwoLevelPageData> _item1 = [listDemo[0]];
    // 说明
    // List<TwoLevelPageData> _item2 = [listDoc[0]];
    List<TwoLevelPageData> nameOfList = listDemo;
    return Scaffold(
      body: SlidingUpPanel(
        controller: model.panelController,
        backdropEnabled: true,
        backdropTapClosesPanel: true,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        collapsed: Row(
          children: <Widget>[
            Expanded(
                child: FlatButton(
              child: Text("向上滑动查看菜单"),
              onPressed: () {
                model.openPanelState();
              },
            )),
          ],
        ),

        minHeight: 58,
        // padding: EdgeInsets.only(top: 60),
        maxHeight: Apps.windowsHeight * 0.4,
        panel: Center(
            child: Theme(
          data: Theme.of(context).copyWith(),
          child: Wrap(
              spacing: 10,
              runSpacing: 20,
              children: nameOfList.asMap().keys.map((i) {
                // var color = Random().nextInt(myColors.length);
                // var color = i;

                return ActionChip(
                  label: Text(
                    nameOfList[i].latter,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        shadows: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset.fromDirection(2),
                              blurRadius: 5),
                        ]),
                  ),
                  shadowColor: Colors.pink[50],
                  // backgroundColor: this.myColors[1],
                  onPressed: () {
                    model.changeMenu(i);
                  },
                );
              }).toList()),
        )),
        body: Swiper(
          loop: false,
          // containerWidth: double.infinity,
          itemBuilder: (BuildContext context, int index) {
            // model.menuIndex=index;
            return FlipCard(
              direction: FlipDirection.HORIZONTAL, //基于X轴翻转
              front: Container(
                width: double.infinity,
                color: Colors.blue[50],
                child: Center(child: nameOfList[index].func),
              ),
              back: Container(
                  width: double.infinity,
                  color: Colors.pink[50],
                  padding: EdgeInsets.all(10),
                  child: AddHeaderUtil([listDoc[index]])),
            );
          },
          itemCount: nameOfList.length,
          viewportFraction: 1, // 占屏大小
          scale: 0.8, // 切换缩放动画尺寸
        ),
      ),
    );
  }
}

// 测试
