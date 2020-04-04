import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText("卡片 Card"),
        Card(child: AspectRatio(aspectRatio: 16 / 9, child: Text("123")))
      ]),
    );
  }
}

class ExampleDocument11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("复选框"),
        InkWellPictrue("http://img.golang.space/PicGo/mhmcf.png"),
      ],
    );
  }
}
