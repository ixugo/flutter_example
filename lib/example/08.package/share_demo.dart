import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';
import 'package:share/share.dart';
// import 'package:share/share.dart';

class ShareDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText("Share  分享"),
        Card(
          child: RaisedButton(
            onPressed: () {
              // 分享
              Share.share('作者博客 blog.golang.space');
            },
            child: Text("点击分享"),
          ),
        ),
      ]),
    );
  }
}

class ShareDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Share  分享"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-09-s02-share.png"),
        MyText("要使用此插件，请在pubspec.yaml文件中添加share为依赖项。"),
        MyText("share 0.6.3+6"),
      ],
    );
  }
}
