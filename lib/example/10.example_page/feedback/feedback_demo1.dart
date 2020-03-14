import 'package:flutter/material.dart';
import 'package:flutter_example/utils/heightAndWidth.dart';

class FeedbackDemo1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FeedbackDemo1> {
  final feedbackController = TextEditingController();

  @override
  void dispose() {
    feedbackController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    feedbackController.addListener(() {
      debugPrint("input ${feedbackController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(245, 247, 250, 1),
          brightness: Brightness.light,

          title: Text(
            "反馈意见",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          // backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Builder(builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(color: Color.fromRGBO(245, 247, 250, 1)),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/feedback.png",
                  height: 150,
                ),
                SizedBox(height: 32.0),
                Card(
                    elevation: 3.0,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: feedbackController,
                      maxLines: 6,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText:
                            "您好，我是维修产品经理，欢迎您给我们提出产品的使用感受和建议，我们将尽快处理您提交的宝贵意见，感谢您的支持！",
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(15.0),
                      ),
                    )),
                SizedBox(height: 36.0),
                Container(
                    width: Apps.windowsWidth * 0.8,
                    height: 40,
                    child: RaisedButton(
                        onPressed: () {
                          print(feedbackController.text);
                          Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text("123"),
                              duration: Duration(milliseconds: 5000)));

                          setState(() {
                            feedbackController.text = "";
                          });
                        },
                        child: Text(
                          "提交",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Theme.of(context).accentColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))))
              ],
            ),
          );
        }));
  }
}
