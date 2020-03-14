import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';
import 'package:like_button/like_button.dart';

class CardTheDemo extends StatefulWidget {
  @override
  _CardTheDemoState createState() => _CardTheDemoState();
}

class _CardTheDemoState extends State<CardTheDemo> {
  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("在演示中大部分例子都使用了卡片包裹"),
      Card(
        // 卡片默认间距为 4
        margin: EdgeInsets.all(20),
        child: Column(children: <Widget>[
          // 比例
          AspectRatio(
            // 比例参数
            aspectRatio: 16 / 9,
            // 图片
            child: ClipRRect(
                child: Image.network(
                  "http://media.xiexblog.top/PicGo/2020-03-06-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg",
                  fit: BoxFit.cover,
                ),
                // 圆角
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
          ),
          // 头像, 标题
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "http://media.xiexblog.top/PicGo/2020-03-06-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg"),
            ),
            title: Text("吉他女孩"),
            subtitle: Text("图片来源于网络"),
          ),
          // 正文
          Container(
              margin: EdgeInsets.all(16),
              child: Text(
                "多少次曾因生活的无奈想去流浪，多少次曾在这不眠的夜里，拿起那把老吉他，轻轻的哼唱那，难忘的歌谣。在这深夜里把你思念。",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )),
          // 1.9 版本  ButtonTheme.bar
          ButtonBarTheme(
              data: ButtonBarThemeData(),
              child: ButtonBar(children: <Widget>[
                LikeButton(
                  size: 21,
                  likeCount: 520,
                  onTap: onLikeButtonTapped,
                ),
                FlatButton(onPressed: () {}, child: Text("Next".toUpperCase())),
              ])),
        ]),
      ),
    ]));
  }
}

class CardDocument extends StatelessWidget {
  final String document = """
  <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td style="width:226px;">color</td>
			<td style="width:573px;">颜色</td>
		</tr><tr><td style="width:226px;">elevation</td>
			<td style="width:573px;">阴影大小</td>
		</tr><tr><td style="width:226px;">shape</td>
			<td style="width:573px;">
			<p><span style="color:#000000;">Card </span><span style="color:#000000;">的阴影效果</span></p>
			默认形状为圆角半径为4.0的圆角矩形边框。</td>
		</tr><tr><td style="width:226px;">borderOnForeground</td>
			<td style="width:573px;">默认true</td>
		</tr><tr><td style="width:226px;">margin</td>
			<td style="width:573px;">外边距</td>
		</tr><tr><td style="width:226px;">clipBehavior</td>
			<td style="width:573px;">剪辑窗口小部件内容的不同方法。如果内容没有溢出小部件边界，则不要为剪辑支付任何性能成本。</td>
		</tr><tr><td style="width:226px;">child</td>
			<td style="width:573px;">子元素</td>
		</tr><tr><td style="width:226px;">semanticContainer</td>
			<td style="width:573px;">默认true</td>
		</tr></tbody></table>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(
          "Card",
        ),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s-28-card.png"),
        MyHtml(document)
      ],
    );
  }
}
