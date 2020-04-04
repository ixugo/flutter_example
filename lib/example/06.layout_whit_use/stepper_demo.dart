import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  // 步骤激活的下标
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      MyText("Stepper"),
      // 更换主题色(可修改 setpper 的颜色)
      Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: Container(
            padding: EdgeInsets.all(8),
            // cardMargin 为自定义样式,仅用于方便预览用
            child: CardMargin(
              // 步骤组件
              child: Stepper(
                  // 第几个步骤了?    int _currentStep = 0;
                  currentStep: _currentStep,
                  // 点击事件
                  onStepTapped: (int value) {
                    setState(() {
                      _currentStep = value;
                    });
                  },
                  // 继续按钮
                  onStepContinue: () {
                    setState(() {
                      _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                    });
                  },
                  // 取消按钮
                  onStepCancel: () {
                    setState(() {
                      _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                    });
                  },
                  // 步骤
                  steps: [
                    // 步骤 1
                    Step(
                      // 标题
                      title: Text('Step 1'),
                      // 描述
                      subtitle: Text("Login first"),
                      // 正文
                      content: Container(
                          alignment: Alignment.centerLeft,
                          child: Text("雨打梨花深闭门，忘了青春，误了青春。")),
                      // 激活状态
                      isActive: _currentStep == 0,
                    ),
                    // 步骤 2
                    Step(
                        title: Text('Step 2'),
                        subtitle: Text("Login first"),
                        content: Container(
                            alignment: Alignment.centerLeft,
                            child: Text("赏心乐事共谁论？花下销魂，月下销魂。")),
                        isActive: _currentStep == 1),
                    // 步骤 3
                    Step(
                        title: Text('Step 3'),
                        subtitle: Text("Login first"),
                        content: Container(
                            alignment: Alignment.centerLeft,
                            child: Text("曾经沧海难为水，除却巫山不是云。")),
                        isActive: _currentStep == 2),
                  ]),
            ),
          )),
    ]));
  }
}

class SetpperDocument extends StatelessWidget {
  final String document = """
  <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:227px;">属性</td>
			<td style="width:572px;">说明</td>
		</tr><tr><td style="width:227px;">steps</td>
			<td style="width:572px;">步骤内容集合</td>
		</tr><tr><td style="width:227px;">
			<p>physics</p>
			</td>
			<td style="width:572px;">步骤跳转动画</td>
		</tr><tr><td style="width:227px;">type</td>
			<td style="width:572px;">StepperType.vertical</td>
		</tr><tr><td style="width:227px;">currentStep</td>
			<td style="width:572px;">步骤位置</td>
		</tr><tr><td style="width:227px;">onStepTapped</td>
			<td style="width:572px;">状态改变时触发</td>
		</tr><tr><td style="width:227px;">onStepContinue</td>
			<td style="width:572px;">点击 continue 时触发</td>
		</tr><tr><td style="width:227px;">onStepCancel</td>
			<td style="width:572px;">点击 cancel 时触发</td>
		</tr><tr><td style="width:227px;">controlsBuilder</td>
			<td style="width:572px;">自定义控件</td>
		</tr><tr><td colspan="2">
			<p>&nbsp;</p>
			以下是每一步（Step）的属性</td>
		</tr><tr><td style="width:227px;">title</td>
			<td style="width:572px;">主标题</td>
		</tr><tr><td style="width:227px;">subtitle</td>
			<td style="width:572px;">副标题</td>
		</tr><tr><td style="width:227px;">content</td>
			<td style="width:572px;">内容</td>
		</tr><tr><td style="width:227px;">state</td>
			<td style="width:572px;">StepState.indexed 此为默认状态,步骤数<br>
			StepState.eidting 编辑状态<br>
			StepState.complete 完成状态<br>
			StepState.disabled 不可用状态<br>
			StepState.error 错误状态</td>
		</tr><tr><td style="width:227px;">isActive</td>
			<td style="width:572px;">导航是否高亮</td>
		</tr></tbody></table>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("Stepper"),
        InkWellPictrue(
            "http://img.golang.space/PicGo/2020-03-09-s-52-setpper.png"),
        MyHtml(document)
      ],
    );
  }
}
