import 'dart:core';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class CachedImageDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText("CachedNetworkImage"),
        MyText("有加载动画 和 加载失败默认图片"),
        Card(
          child: CachedNetworkImage(
            height: 250,
            width: double.infinity,
            imageUrl:
                "http://media.xiexblog.top/PicGo/2020-03-09-s22-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg",
            fit: BoxFit.cover,
            // 加载动画
            placeholder: (context, url) => CircularProgressIndicator(),
            // 失败图片
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        MyText("CachedNetworkImageProvider"),
        Card(
          child: Image(
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
              image: CachedNetworkImageProvider(
                  "http://media.xiexblog.top/PicGo/2020-03-09-s22-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg")),
        )
      ]),
    );
  }
}

class CachedImageDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("cached_network_image: 2.0.0"),
        MyText("CachedNetworkImage"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s35-cachedImage1.png"),
        MyText("CachedNetworkImageProvider"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-09-s42-cachedImage2.png"),
      ],
    );
  }
}
