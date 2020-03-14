import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime selectedDate = DateTime.now();
  Future<Void> _selectDate() async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: selectedDate, // 初始日期
      firstDate: DateTime(1950), // 选择日期最早的时间
      lastDate: DateTime(2100), // 选择日期未来的时间
    );

    if (date == null) return null;

    setState(() {
      selectedDate = date;
    });
    return null;
  }

  TimeOfDay selectedTime = TimeOfDay(hour: 9, minute: 30);
  Future<Void> _selectTime() async {
    final TimeOfDay time =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (time == null) return null;
    setState(() {
      selectedTime = time;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      // 需要导入 Intl
      MyText("DateTime"),
      MyText("日期&时间选择器"),

      CardMargin(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            InkWell(
              onTap: _selectDate,
              child: Row(children: <Widget>[
                Text(DateFormat.yMd().format(selectedDate)),
                Icon(Icons.arrow_drop_down),
                SizedBox(width: 20),
                InkWell(
                  onTap: _selectTime,
                  child: Row(children: <Widget>[
                    Text(selectedTime.format(context)),
                    Icon(Icons.arrow_drop_down)
                  ]),
                ),
              ]),
            ),
          ])),
    ]));
  }
}

class DateTimeDocument extends StatelessWidget {
  final String datetimedocument = """
  <div class="table-box"><table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td colspan="2" style="width:226px;">
			<p><span style="color:#f33b45;"><strong>showDatePicker</strong></span></p>
			</td>
		</tr><tr><td style="width:226px;">context</td>
			<td style="width:573px;">上下文</td>
		</tr><tr><td style="width:226px;">initialDate</td>
			<td style="width:573px;">初始日期</td>
		</tr><tr><td style="width:226px;">firstDate</td>
			<td style="width:573px;">开始日期</td>
		</tr><tr><td style="width:226px;">lastDate</td>
			<td style="width:573px;">结束日期</td>
		</tr><tr><td style="width:226px;">selectableDayPredicate</td>
			<td style="width:573px;">控制可选日期。如true则都可选，如false则不可选</td>
		</tr><tr><td style="width:226px;">initialDatePickerMode</td>
			<td style="width:573px;">用于最初在年或月+日选择器模式中显示日期选择器。默认DatePickerMode.day</td>
		</tr><tr><td style="width:226px;">locale</td>
			<td style="width:573px;">用于设置日期选择器的区域设置</td>
		</tr><tr><td style="width:226px;">textDirection</td>
			<td style="width:573px;">设置日期选择器的文本方向</td>
		</tr><tr><td style="width:226px;">builder</td>
			<td style="width:573px;">用于包装对话框小部件以添加<a href="https://api.flutter.dev/flutter/material/Theme-class.html" rel="nofollow">主题</a>等继承的小部件。</td>
		</tr><tr><td colspan="2" style="width:226px;">
			<p><span style="color:#f33b45;"><strong>showTimePicker</strong></span></p>
			</td>
		</tr><tr><td style="width:226px;">context</td>
			<td style="width:573px;">上下文</td>
		</tr><tr><td style="width:226px;">initialTime</td>
			<td style="width:573px;">初始时间</td>
		</tr><tr><td style="width:226px;">builder</td>
			<td style="width:573px;">用于包装对话框小部件以添加<a href="https://api.flutter.dev/flutter/material/Theme-class.html" rel="nofollow">主题</a>等继承的小部件。</td>
		</tr></tbody></table></div>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText("日期"),
        MyText("必须在 pubspec.yaml 文件的 dependencies 下,\n添加 intl: 0.16.1"),
        InkWellPictrue(
          "http://media.xiexblog.top/PicGo/2020-03-04-date1.png",
        ),
        InkWellPictrue("http://media.xiexblog.top/PicGo/2020-03-04-date2.png"),
        MyText("时间"),
        InkWellPictrue("http://media.xiexblog.top/PicGo/2020-03-04-time1.png"),
        InkWellPictrue("http://media.xiexblog.top/PicGo/2020-03-04-time2.png"),
        MyHtml(datetimedocument)
      ],
    );
  }
}
