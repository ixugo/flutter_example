import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/example/provider/my_provider.dart';
import 'package:flutter_example/src/dataSource.dart';
import 'package:flutter_example/src/forwarding.dart';
import 'package:flutter_example/src/newForwarding.dart';
import 'package:flutter_example/utils/router_animated.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

class NewHomePage extends StatefulWidget {
  final String title;
  NewHomePage({Key key, this.title}) : super(key: key);

  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage>
// with SingleTickerProviderStateMixin {
{
  final List colors = [Colors.blue[50], Colors.pink[50]];

  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(vsync: this, length: 2)
  //     ..addListener(() {
  //       setState(() {
  //         currentIndex = tabController.index;
  //       });
  //     });
  // }
  final List<Widget> rightNowPage = [HomeTab1(), HomeTab2()];
  @override
  Widget build(BuildContext context) {
    MyProvider model = Provider.of<MyProvider>(context);
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: Platform.isIOS ? 75 : 60,
        backgroundColor: colors[model.currentIndex],
        index: model.currentIndex,
        items: <Widget>[
          Icon(Icons.attachment, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            model.currentIndex = index;
          });
          // tabController.animateTo(index,
          // duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
      body: rightNowPage[model.currentIndex],
    );
  }
}

class HomeTab1 extends StatelessWidget {
  Widget _itemBuilder(context, int index) {
    MyProvider model = Provider.of<MyProvider>(context);
    // 动画
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: const Duration(milliseconds: 375),
      child: SlideAnimation(
          //滑动动画
          verticalOffset: 50.0,
          child: FadeInAnimation(
            //渐隐渐现动画
            child: Column(children: <Widget>[
              ListTile(
                onTap: () {
                  // 为第七条瀑布流样式做准备
                  // if (index >= 7) {
                  //   return;
                  // }
                  // 将当前页面的下标传递, 用于比较

                  if (model.pageIndexOfArray == null) {
                    model.pageIndexOfArray = index;
                  } else if (model.pageIndexOfArray != index) {
                    model.menuIndex = 0;
                  }
                  // 翻转式卡片
                  if (index >= 8) {
                    Navigator.of(context).push(
                      CustomRoute(
                        MyGridViewPage(
                          dataList[index],
                        ),
                      ),
                    );
                    return;
                  }

                  // 前 8 个分类的样式
                  Navigator.of(context).push(CustomRoute(NewForwarding(
                    title: dataList[index].groupName,
                    menu: dataList[index],
                  )));
                },
                title: Text(
                  dataList[index].groupName,
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
                subtitle: Text(
                  dataList[index].desc,
                  style: TextStyle(color: Colors.grey),
                ),
                contentPadding: const EdgeInsets.only(left: 30, right: 30),
              ),
              // dataList.length - 1 > index
              //     ? Divider(
              //         height: 0,
              //       )
              //     : Container()
            ]),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[50],
      child: Column(children: <Widget>[
        // SizedBox(height: 40),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 35),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10), //  内容间距调小
              filled: true, // 背景暗淡
              hintText: '关键字搜索', // 显示内容
              prefixIcon: Icon(Icons.search), // 左边图标
              enabledBorder: OutlineInputBorder(
                  // 线框
                  borderRadius: BorderRadius.circular(15.0), // 圆角
                  borderSide: BorderSide(color: Colors.blue[50])), // 背景色
              focusedBorder: OutlineInputBorder(
                  // 聚焦后
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Colors.blue[200])),

              suffix: SizedBox(
                height: 21,
                child: IconButton(
                    // textColor: Colors.blue[300],

                    alignment: Alignment.center,
                    iconSize: 16.0,
                    padding: EdgeInsets.zero,
                    icon: Text(
                      "搜索",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {
                      BotToast.showCustomText(
                          align: Alignment(0, 0.6),
                          toastBuilder: (_) => Card(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 10, top: 0, bottom: 5),
                                    child: Text(
                                      "即将上线, 敬请期待",
                                      style: TextStyle(fontSize: 16),
                                    )),
                              ));
                    }),
              ),
            ),
          ),
        ),
        Expanded(
            child: Theme(
                data: ThemeData(
                  highlightColor: Colors.white.withOpacity(0.5),
                  splashColor: Colors.pink[200],
                ),
                // 列表动画
                child: AnimationLimiter(
                    child: ListView.builder(
                        itemCount: dataList.length,
                        padding: EdgeInsets.only(top: 5),
                        itemBuilder: _itemBuilder)))),
      ]),
    );
  }
}

class HomeTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Material(
        color: Colors.pink[50],
        child: Theme(
            // 修改水波纹颜色
            data: Theme.of(context).copyWith(
              highlightColor: Colors.white.withOpacity(0.5),
              splashColor: Colors.blue[200],
            ),
            child: Column(children: <Widget>[
              SizedBox(
                height: 180,
                width: double.infinity,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(120 / 2)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(120 / 2),
                    child: Image(
                        image: CachedNetworkImageProvider(
                            "http://img.golang.space/PicGo/2020-03-06-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg"),
                        height: 120,
                        width: 120),
                  )),
              SizedBox(height: 16),
              Text(
                "Flutter 日记",
                // style: Theme.of(context).textTheme.title,
              ),
              SizedBox(height: 32),
              Divider(height: 0),
              ListTile(
                  title: Text("关于我们"),
                  contentPadding: const EdgeInsets.only(left: 35, right: 35),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // BotToast.showSimpleNotification(title: "项目建设中");
                    BotToast.showCustomText(
                        align: Alignment(0, 0.6),
                        toastBuilder: (_) => Card(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 5),
                                  child: Text(
                                    "项目目建设中...",
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ));
                  }),
              Divider(height: 0),
              ListTile(
                  title: Text("消息反馈"),
                  contentPadding: const EdgeInsets.only(left: 35, right: 35),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    // BotToast.showSimpleNotification(title: "项目建���中");
                    BotToast.showCustomText(
                        align: Alignment(0, 0.6),
                        toastBuilder: (_) => Card(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 10, top: 5, bottom: 5),
                                  child: Text(
                                    "暂未连接到应用服务器",
                                    style: TextStyle(fontSize: 16),
                                  )),
                            ));
                  }),
              Divider(height: 0),
            ])),
      );
    });
  }
}

// ==============================  第 9 页面

class MyGridViewPage extends StatelessWidget {
  MyGridViewPage(this.menu);
  final DataMenu menu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 5,
        children: <Widget>[
          FlatButton(
            child: Text("data"),
            onPressed: () {
              Navigator.of(context).push(
                CustomRoute(Forwarding(
                  menu,
                )),
              );
            },
          )
        ],
      ),
    );
  }
}

//  测试
