import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_example/example/provider/my_provider.dart';
import 'package:flutter_example/src/home.dart';
import 'package:provider/provider.dart';

void main() {
  // 1
  final model = MyProvider();
  runApp(
    // provider 状态管理
    MultiProvider(
      providers: [ChangeNotifierProvider.value(value: model)],
      // 用于弹窗
      child: MyApp(),
    ),
  );
  // 极光推送

  // model.initJpush();
  // 判断是否安卓,设置 android 状态栏为透明的沉浸式。
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [BotToastNavigatorObserver()],
      builder: BotToastInit(),
      debugShowCheckedModeBanner: true, // 右上角 debug 测试
      title: 'Flutter日记', // 任务管理器内显示标题
      // home: HomePage(title: 'Flutter Example'),
      theme: ThemeData(
        //  主题
        primaryColor: Colors.blue,
        // accentColor: Colors.lightBlue,
        // accentTextTheme: TextTheme(
        //   title: TextStyle(
        //       fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black),
        //   body1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
        // ),
        // textTheme: TextTheme(
        //   title: TextStyle(
        //       fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        //   body1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400), // 文本
        // ),
      ),
      initialRoute: "/", // 初始路由
      routes: {
        // 路由
        "/": (context) => NewHomePage(title: 'Home Example'),
      },
    );
  }
}
