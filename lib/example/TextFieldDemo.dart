import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 32.0,
        ),
        TextField(
          keyboardType: TextInputType.text,
          decoration: new InputDecoration(
              suffix: Container(
                  height: 10,
                  child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: Icon(
                        Icons.clear,
                        color: Colors.black45,
                      ),
                      onPressed: null)),
              hintText: '请输入用户名',
              prefixIcon: Icon(Icons.people),
              filled: true, //背景色
              border: OutlineInputBorder()),
        ),
      ],
    ));
  }
}
