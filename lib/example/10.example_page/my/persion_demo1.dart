import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';
import 'package:flutter_example/utils/heightAndWidth.dart';

class PersionDemo1 extends StatefulWidget {
  @override
  __MyInfoState createState() => __MyInfoState();
}

class __MyInfoState extends State<PersionDemo1> {
  @override
  Widget build(BuildContext context) {
    final data = {
      "NAME": "张三",
      "CTIME": "flutter 教程部",
      "PHONE": "10086",
      "MDEPT": "一分钟前"
    };

    var theImage =
        "http://img.golang.space/PicGo/2020-03-12-s54-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg";

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
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
              child: Stack(
                alignment: Alignment.topCenter,
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    height: Apps.windowsHeight * 0.45,
                    width: Apps.windowsWidth * 0.95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                    child: _userInfo(data),
                    // )
                  ),
                  Positioned(
                      height: 110,
                      top: -(110 / 2),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(150)),
                          child: Image.network(theImage, fit: BoxFit.cover))),
                ],
              ),
            )));
  }

  Widget _userInfo(data) {
    var theTextStyle = new TextStyle(fontSize: 16, color: Colors.black);
    var theContainerPadding = new EdgeInsets.only(bottom: 8, top: 8, left: 20);
    var theAnswerTextStyle = new TextStyle(fontSize: 16, color: Colors.black);

    //  名字
    var name = data['NAME'];
    // 部门
    var register = data['CTIME'];
    //  手机
    var cellPhone = data['PHONE'];
    // 注册时间
    var dart = data['MDEPT'];
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      height: Apps.windowsHeight * 0.4,
      padding: EdgeInsets.only(left: 30, right: 30),
      margin: EdgeInsets.only(top: Apps.windowsHeight * 0.01),
      child: Column(
        children: <Widget>[
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
}

class PersionDocument1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Share  分享"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-09-s02-share.png"),
      ],
    );
  }
}
