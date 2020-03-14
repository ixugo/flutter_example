import 'package:flutter/material.dart';
import 'package:flutter_example/utils/heightAndWidth.dart';

class AboutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          brightness: Brightness.light,

          title: Text(
            "关于我们",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          // backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Builder(builder: (BuildContext context) {
          return Column(
            children: <Widget>[
              SizedBox(height: Apps.windowsHeight * 0.1),
              Image.network(
                "http://media.xiexblog.top/PicGo/2020-03-12-s54-v2-2575ed44417393b06cf00ab42f4c55e4_r.jpg",
                height: 80,
              ),
              SizedBox(height: 24),
              Text("App名称",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21)),
              Text("Version 1.0",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16)),
              SizedBox(
                height: 32,
              ),
              Divider(height: 0),
              ListTile(
                contentPadding: const EdgeInsets.only(left: 30, right: 30),
                title: Text("检查版本更新", style: TextStyle(fontSize: 18)),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              Divider(height: 0),
            ],
          );
        }));
  }
}
