import 'package:flutter/material.dart';
import 'package:jpush_flutter/jpush_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyProvider with ChangeNotifier {
  // 极光推送
  // initJpush() async {
  //   print("初始化 jpush");
  //   await FlutterJPush.startup();
  //   print("初始化成功 jpush");
  //   var regId = await FlutterJPush.getRegistrationID();
  //   print(regId);
  // }

  final JPush jpush = new JPush();
  initJpush() {
    jpush.setup(
      appKey: "6a186826d2955b47eb5071d1",
      channel: "flutter_channel",
      production: false,
      debug: true, //是否打印debug日志
    );
  }

  //  Home bottomBar
  int currentIndex = 0;

  changeBottomBar(int index) {
    currentIndex = index;
    notifyListeners();
  }

// 菜单切换
  PanelController panelController = PanelController();

  int menuIndex = 0;
  changeMenu(int i) {
    menuIndex = i;
    panelController.close();
    notifyListeners();
  }

// 底部菜单展示与关闭
  openPanelState() {
    panelController.open();

    notifyListeners();
  }
}
