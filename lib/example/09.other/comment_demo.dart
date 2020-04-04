import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';
import 'package:like_button/like_button.dart';

import 'comment_util.dart';

class CommentDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<CommentDemo> {
  Widget _comment() {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 0, right: 10),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 6,
              child: Container(
                  padding: EdgeInsets.all(7),
                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    onPressed: () {
                      Navigator.push(
                          context, PopRoute(child: BottomInputDialog()));
                    },
                    child: Text(
                      "评论",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ))),

          //  点赞
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {},
                child: LikeButton(
                  size: 22,
                  isLiked: false,
                ),
              )),
          // 收藏
          Expanded(
            flex: 1,
            child: GestureDetector(
                onTap: () {},
                child: LikeButton(
                    isLiked: false,
                    likeBuilder: (bool isLiked) {
                      return isLiked
                          ? Icon(
                              Icons.star,
                              color: Colors.yellow,
                            )
                          : Icon(Icons.star_border);
                    })),
            // onPressed: () {
            //   onChangeStatus(data['iscang'], 1);
            // },
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.share,
              ),
              iconSize: 20,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("评论"),
      CardMargin(
        child: _comment(),
      ),
    ]));
  }
}

class CommentDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(" 评论"),
        MyText("1 创建工具类, 用于底部弹窗"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-11-s41-comment1.png"),
        MyText("2 组件"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-11-s49-comment2.png"),
        MyText("3 应用"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-11-s55-comment3.png"),
        Text("关键点 TextField 设置 maxline:null, 父组件不设置高度, 即可随着行数自动增加高度")
      ],
    );
  }
}
