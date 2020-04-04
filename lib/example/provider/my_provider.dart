import 'package:flutter/material.dart';
// import 'package:jpush_flutter/jpush_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyProvider with ChangeNotifier {
  changeBottomBar(int index) {
    currentIndex = index;
    notifyListeners();
  }

// 详情页的底部弹出框菜单切换
  PanelController panelController = PanelController();

  // 当前分类下的某个详情页
  int menuIndex = 0;

  // 改变详情页, 并关闭弹出框
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

  // 页面切换时, 锁定数组下标
  // 解决切换不同页面时, 下标越界问题
  int pageIndexOfArray;

  //  首页的底部工具栏切换
  int currentIndex = 0;
}
