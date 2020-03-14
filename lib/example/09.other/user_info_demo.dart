import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';
import 'package:flutter_example/utils/heightAndWidth.dart';

class UserInfoDemo extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<UserInfoDemo> {
  // 信息
  Widget _userInfo() {
    // 标题样式
    var theTextStyle = new TextStyle(fontSize: 16, color: Colors.black);
    // 容器 padding
    var theContainerPadding = new EdgeInsets.only(bottom: 8, top: 8, left: 20);
    // 内容样式
    var theAnswerTextStyle = new TextStyle(fontSize: 16, color: Colors.black);

    // 属性
    var name = "name";
    var register = 'CTIME';
    var cellPhone = 'PHONE';
    var dart = 'MDEPT';
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      height: 500,
      padding: EdgeInsets.only(left: 30, right: 30),
      margin: EdgeInsets.only(top: Apps.windowsHeight * 0.01),
      child: Column(
        children: <Widget>[
          // 顶部间距
          SizedBox(
            height: 70,
          ),

          Container(
            height: 50,
            padding: theContainerPadding,
            child: Row(
              children: <Widget>[
                Text(
                  "姓  名:",
                  style: theTextStyle,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 32),
                    alignment: Alignment.centerRight,
                    child: Text(
                      name,
                      style: theAnswerTextStyle,
                    )),
              ],
            ),
          ),
          Container(
              height: 50,
              padding: theContainerPadding,
              child: Row(
                children: <Widget>[
                  Text(
                    "部  门:",
                    style: theTextStyle,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 32),
                      alignment: Alignment.centerRight,
                      child: Text(dart, style: theAnswerTextStyle)),
                ],
              )),
          Container(
              height: 50,
              padding: theContainerPadding,
              child: Row(
                children: <Widget>[
                  Text(
                    "手机号:",
                    style: theTextStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 25),
                    alignment: Alignment.centerRight,
                    child: Text(cellPhone, style: theAnswerTextStyle),
                  )
                ],
              )),
          Container(
              height: 50,
              padding: theContainerPadding,
              child: Row(
                children: <Widget>[
                  Text(
                    "注册时间:",
                    style: theTextStyle,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12),
                    alignment: Alignment.centerRight,
                    child: Text(register, style: theAnswerTextStyle),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theImage =
        "http://media.xiexblog.top/PicGo/2020-03-12-s54-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg";
    // 使用 container 包裹 Scaffold 或 Scaffold 包裹 material , 背景图片就会填充至状态栏
    return Container(
        height: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "http://media.xiexblog.top/PicGo/2020-03-12-s43-202358hdi5iw54xz00o05q.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,

              centerTitle: true,
              title: Text(
                "个人信息",
                style: TextStyle(color: Colors.white),
              ),
              leading: BackButton(color: Colors.white),
              actions: [
                FlatButton(
                    onPressed: null,
                    child: Text("编辑",
                        style: TextStyle(fontSize: 16, color: Colors.white)))
              ],
              elevation: 0,
              // backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 150),
              // 重叠
              child: Stack(
                // 定位为
                alignment: Alignment.topCenter,
                // 超出背景的内容显示
                overflow: Overflow.visible,
                children: <Widget>[
                  // 文字内容
                  Container(
                    height: Apps.windowsHeight * 0.45,
                    width: Apps.windowsWidth * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                    child: _userInfo(),
                    // )
                  ),

                  // 头像
                  Positioned(
                    height: 110,
                    top: -(110 / 2),
                    child: Container(

                        // 白色描边
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(150),
                        ),
                        // 图片切圆
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(150)),
                            child: Image.network(theImage, fit: BoxFit.cover))),
                  ),
                ],
              ),
            )));
  }
}

class UserInfoDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("用户信息"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-12-s49-userinfo.png"),
      ],
    );
  }
}
