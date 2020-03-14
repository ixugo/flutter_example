import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Apps {
  static EdgeInsets get winPadding => MediaQueryData.fromWindow(window).padding;
  static Size get winSize => MediaQueryData.fromWindow(window).size;

//   获取 组件的宽高
//   final size =MediaQuery.of(context).size;
//   final width =size.width;
//   final height =size.height;

  static double get windowsTop => winPadding.top; // 顶部
  static double get windowsBottom => winPadding.bottom; // 底部
  static double get windowsWidth => winSize.width; // 宽度
  static double get windowsHeight => winSize.height; // 高度
  static String get operatingSystem =>
      Platform.operatingSystem; // 表示操作系统或平台的字符串。如: IOS
  static String get operatingSystemVersion => Platform.operatingSystemVersion;

  // 显示边界布局
  static void enableDebugPaint() {
    debugPaintSizeEnabled = true;
  }
}
