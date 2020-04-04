import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class DividerDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Divider"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-09-s42-divier.png"),
      ],
    );
  }
}

class DividerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      MyText(
        "Divider",
      ),
      CardMargin(
        padding: 20,
        child: Wrap(
            // 行间距
            runSpacing: 20,
            children: <Widget>[
              Divider(
                // 左间距
                indent: 100,
                // 右间距
                endIndent: 100,
                // 颜色
                color: Colors.red,
                //线高度
                thickness: 2,
              ),
              Divider(
                indent: 50,
                endIndent: 50,
                color: Colors.blue,
                thickness: 5,
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                color: Colors.black,
                thickness: 10,
              ),
              MyText(
                "垂直分割线 VerticalDivider",
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  width: 0,
                  color: Colors.black,
                ),
              )
            ]),
      ),
    ]);
  }
}
