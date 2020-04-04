import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class StatusBarDemo extends StatefulWidget {
  @override
  _CardDemo11State createState() => _CardDemo11State();
}

class _CardDemo11State extends State<StatusBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      ContainerText("沉浸式状态栏"),
      Card(child: AspectRatio(aspectRatio: 16 / 9, child: Text("效果见本软件")))
    ]));
  }
}

class StatusBarDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("沉浸式状态栏"),
        MyText("注 : 顺序必须放在 runapp 后面"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-10-s59-statusbar.png")
      ],
    );
  }
}
