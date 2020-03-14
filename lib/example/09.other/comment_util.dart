import 'package:flutter/material.dart';

class BottomInputDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.transparent,
      body: new Column(
        children: <Widget>[
          Expanded(
              child: new GestureDetector(
            child: new Container(
              color: Colors.black54,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )),
          new Container(
            // height: 55,
            // 限制高宽
            constraints: BoxConstraints(maxHeight: 130.0),
            color: Colors.white,
            child: Row(children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                    child: TextField(
                      //
                      maxLines: null, // 行数设置为 null , 父组件不设置高度, 则自动增长
                      autofocus: true, // 自动聚焦
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8), //  内容间距调小
                        filled: true,
                        fillColor: Colors.blue[50],

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Container(
                    height: 35,
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "发送",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color.fromRGBO(0, 151, 241, 1))),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}
