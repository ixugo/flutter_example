import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/example/provider/my_provider.dart';
import 'package:flutter_example/src/dataSource.dart';
import 'package:flutter_example/utils/child_data_page_util.dart';
import 'package:flutter_example/utils/heightAndWidth.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

// 当前页面为 前 8选项, 现成页面

//  测试
class NewForwarding extends StatefulWidget {
  // 将函数数组传递过来
  NewForwarding({this.title = "NewPage", this.menu, Key key}) : super(key: key);
  final String title;
  final DataMenu menu;

  @override
  _NewForwardingState createState() => _NewForwardingState();
}

class _NewForwardingState extends State<NewForwarding> {
  final List myColors = [
    Colors.blueAccent[100],
    Colors.redAccent[100],
    Colors.pinkAccent[100],
    Colors.purpleAccent[100],
    Colors.indigoAccent[100],
    Colors.cyanAccent[100],
    Colors.tealAccent,
    Colors.limeAccent,
    Colors.lightBlue,
  ];

  @override
  Widget build(BuildContext context) {
    MyProvider model = Provider.of<MyProvider>(context);

// 获取当前类下的所有相关函数
    final List<TwoLevelPageData> listDemo = widget.menu.demo;
    final List<TwoLevelPageData> listDoc = widget.menu.document;

    print("=================页面加载===============");
    print(model.menuIndex);

    // 如果该下标下 没有函数, 必须置零, 这里只返回

    // if (listDemo.length < model.menuIndex) {
    //   print("置 0");
    //   model.menuIndex = 0;
    // }

    List<TwoLevelPageData> _item1 = [listDemo[model.menuIndex]];
    List<TwoLevelPageData> _item2 = [listDoc[model.menuIndex]];

    List<TwoLevelPageData> _listDemo = listDemo;
    // print(" the list is >>>>  ${_listDemo[0].latter}");
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // floatingActionButton: NewForwarding.floatingActionButton,
        appBar: PreferredSize(
          child: AppBar(
            // 关闭返回按钮
            // backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            // title: Text(widget.title),
            elevation: 0.0,
            bottom:
                TabBar(unselectedLabelColor: Colors.blue[200], tabs: <Widget>[
              Tab(
                text: "view",
              ),
              Tab(
                text: "code",
              ),
            ]),
          ),
          preferredSize: Size.fromHeight(48),
        ),
        body: SlidingUpPanel(
          controller: model.panelController,

          backdropEnabled: true,
          backdropTapClosesPanel: true,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          collapsed: Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton(
                child: Text("向上滑动查看菜单"),
                onPressed: () {
                  model.openPanelState();
                },
              )),
            ],
          ),

          minHeight: 58,
          // padding: EdgeInsets.only(top: 60),
          maxHeight: Apps.windowsHeight * 0.4,
          panel: Center(
              child: Theme(
            data: Theme.of(context).copyWith(),
            child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: _listDemo.asMap().keys.map((i) {
                  // var color = Random().nextInt(myColors.length);
                  var color = 1;
                  return ActionChip(
                    label: Text(
                      _listDemo[i].latter,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset.fromDirection(2),
                                blurRadius: 5),
                          ]),
                    ),
                    shadowColor: Colors.pink[50],
                    backgroundColor: this.myColors[color],
                    onPressed: () {
                      model.changeMenu(i);
                    },
                  );
                }).toList()),
          )),
          body: TabBarView(
              children: <Widget>[AddHeaderUtil(_item1), AddHeaderUtil(_item2)]),
        ),
      ),
    );
  }
}

// class NewForwarding extends StatefulWidget {
//   NewForwarding({Key key, this.list, this.title}) : super(key: key);
//   String title;
//   List list;

//   // static Widget floatingActionButton;

//   @override
//   _demoState createState() => _demoState();
// }

// class _demoState extends State<NewForwarding> {
//   WaveType currentAnimate = WaveType.liquidReveal;

//   void changeAnimate() {
//     setState(() {
//       if (currentAnimate == WaveType.liquidReveal) {
//         currentAnimate = WaveType.circularReveal;
//       } else {
//         currentAnimate = WaveType.liquidReveal;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: LiquidSwipe(
//         pages: [
//           Container(
//             color: Colors.blue[50],
//             child: widget.list[0],
//           ),
//           Container(
//             color: Colors.pink[50],
//           ),
//         ],
//         fullTransitionValue: 300,
//         enableSlideIcon: true,
//         enableLoop: true,
//         positionSlideIcon: 0.35,
//         waveType: currentAnimate,
//         onPageChangeCallback: (page) => pageChangeCallback(page),
//         currentUpdateTypeCallback: (updateType) =>
//             updateTypeCallback(updateType),
//       ),
//     );
//   }

//   pageChangeCallback(int page) {
//     print(page);
//   }

//   updateTypeCallback(UpdateType updateType) {
//     print(updateType);
//   }
// }
