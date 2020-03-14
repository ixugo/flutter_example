import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class MaterialAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: new Border.all(width: 1, color: Colors.red),
      ),
      child: MaterialApp(
        home: Scaffold(
            body: Container(
          child: Text(
              "MaterialApp() 推荐的app入口\n封装了应用程序实现 Mateial Design 所需 Widget\n一般作为顶层 widget 使用"),
        )),
      ),
    );
    // Container(
    //     alignment: Alignment.center,
    //     padding: EdgeInsets.all(15),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         Text("MaterialApp 实际效果见本应用"),
    //         MyText("请往左滑动查看源代码"),
    //         SizedBox(height: 16),
    //         MyText(
    //             "MaterialApp() 推荐的app入口\n封装了应用程序实现 Mateial Design 所需 Widget\n一般作为顶层 widget 使用")
    //       ],
    //     ));
  }
}

class MaterialAppDocument extends StatelessWidget {
  final String document = """
<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:229px;">属性</td>
			<td style="width:570px;">说明</td>
		</tr><tr><td style="width:229px;">navigatorKey</td>
			<td style="width:570px;">导航的key</td>
		</tr><tr><td style="width:229px;">home</td>
			<td style="width:570px;">主页</td>
		</tr><tr><td style="width:229px;">routes</td>
			<td style="width:570px;">路由</td>
		</tr><tr><td style="width:229px;">initialRoute</td>
			<td style="width:570px;">初始路由</td>
		</tr><tr><td style="width:229px;">onGenerateRoute</td>
			<td style="width:570px;">生成路由</td>
		</tr><tr><td style="width:229px;">onUnknownRoute</td>
			<td style="width:570px;">位置路由</td>
		</tr><tr><td style="width:229px;">navigatorObservers</td>
			<td style="width:570px;">导航的观察者</td>
		</tr><tr><td style="width:229px;">builder</td>
			<td style="width:570px;">widget的构建</td>
		</tr><tr><td style="width:229px;">title</td>
			<td style="width:570px;">最近的应用程序中（任务管理器）&nbsp; 快照描述</td>
		</tr><tr><td style="width:229px;">onGenerateTitle</td>
			<td style="width:570px;">
			<p>生成任务管理器显示的标题</p>
			</td>
		</tr><tr><td style="width:229px;">color</td>
			<td style="width:570px;">背景颜色</td>
		</tr><tr><td style="width:229px;">theme</td>
			<td style="width:570px;">主题</td>
		</tr><tr><td style="width:229px;">darkTheme</td>
			<td style="width:570px;">暗主题</td>
		</tr><tr><td style="width:229px;">locale</td>
			<td style="width:570px;">app语言支持</td>
		</tr><tr><td style="width:229px;">localizationsDelegates</td>
			<td style="width:570px;">多语言代理</td>
		</tr><tr><td style="width:229px;">localeListResolutionCallback</td>
			<td style="width:570px;">&nbsp;</td>
		</tr><tr><td style="width:229px;">localeResolutionCallback</td>
			<td style="width:570px;">多语言回调</td>
		</tr><tr><td style="width:229px;">supportedLocales</td>
			<td style="width:570px;">支持的多语言，默认&lt;Locale&gt;[Locale('en', 'US')]</td>
		</tr><tr><td style="width:229px;">debugShowMaterialGrid</td>
			<td style="width:570px;">显示网格，默认false</td>
		</tr><tr><td style="width:229px;">showPerformanceOverlay</td>
			<td style="width:570px;">打开性能监控，覆盖在屏幕最上面，默认false</td>
		</tr><tr><td style="width:229px;">checkerboardRasterCacheImages</td>
			<td style="width:570px;">打开光栅缓存图像的检查板，默认false</td>
		</tr><tr><td style="width:229px;">checkerboardOffscreenLayers</td>
			<td style="width:570px;">打开渲染到屏幕外位图的图层的checkerboarding。，默认false</td>
		</tr><tr><td style="width:229px;">showSemanticsDebugger</td>
			<td style="width:570px;">打开一个覆盖图，显示框架报告的可访问性信息 显示边框，默认false</td>
		</tr><tr><td style="width:229px;">debugShowCheckedModeBanner</td>
			<td style="width:570px;">右上角显示一个debug的图标，默认true</td>
		</tr></tbody></table>""";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("MaterialApp"),
        InkWellPictrue(
            "http://media.xiexblog.top/PicGo/2020-03-10-s59-materialApp.png"),
        MyHtml(document)
      ],
    );
  }
}
