import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'container_util.dart';

class TwoLevelPageData {
  final String latter;
  final Widget func;
  TwoLevelPageData(this.latter, {this.func});
}

// 将列表分组, 突出头部区域, 同时永远保持一个置顶
class AddHeaderUtil extends StatefulWidget {
  AddHeaderUtil(this.data, {Key key}) : super(key: key);

  final List data;
  @override
  _AddHeaderUtilState createState() => _AddHeaderUtilState();
}

class _AddHeaderUtilState extends State<AddHeaderUtil> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (context, index) {
          return StickyHeaderBuilder(
            builder: (BuildContext context, double stuckAmount) {
              stuckAmount = 1.0 - stuckAmount.clamp(0.0, 1.0);
              return new Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(90)),
                  color:
                      Color.lerp(Colors.blue[50], Colors.pink[50], stuckAmount),
                  // ),
                  margin: EdgeInsets.only(bottom: 20),

                  // height: 50.0,

                  child: ContainerText(widget.data[index].latter));
            },
            // header: ContainerText(widget.data[index].latter),
            content: Container(
                padding: EdgeInsets.only(bottom: 200),
                child: widget.data[index].func),
            // content: ChipDemo(),
          );
        });
  }
}
