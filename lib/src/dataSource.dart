import 'package:flutter_example/example/01.struct_and_router/appbar_demo.dart';
import 'package:flutter_example/example/01.struct_and_router/bottomNavigationBar_demo.dart';
import 'package:flutter_example/example/01.struct_and_router/drawer_endDrawer.dart';
import 'package:flutter_example/example/01.struct_and_router/materialapp_demo.dart';
import 'package:flutter_example/example/01.struct_and_router/scaffol_demo.dart';
import 'package:flutter_example/example/01.struct_and_router/tabber_demo.dart';
import 'package:flutter_example/example/02.button/floatingActionButton_demo.dart';
import 'package:flutter_example/example/03.input/checkbox_demo.dart';
import 'package:flutter_example/example/03.input/datetime_demo.dart';
import 'package:flutter_example/example/03.input/radio_demo.dart';
import 'package:flutter_example/example/03.input/slider_demo.dart';
import 'package:flutter_example/example/03.input/switch_demo.dart';
import 'package:flutter_example/example/04.dialog/alert_dialog_demo.dart';
import 'package:flutter_example/example/04.dialog/bottom_sheet_demo.dart';
import 'package:flutter_example/example/04.dialog/expansion_panel_demo.dart';
import 'package:flutter_example/example/04.dialog/simple_dialog_demo.dart';
import 'package:flutter_example/example/04.dialog/snackbar_demo.dart';
import 'package:flutter_example/example/05.infoView/chip_demo.dart';
import 'package:flutter_example/example/06.layout_whit_use/card_demo.dart';
import 'package:flutter_example/example/06.layout_whit_use/data_table_demo.dart';
import 'package:flutter_example/example/06.layout_whit_use/divider_demo.dart';
import 'package:flutter_example/example/06.layout_whit_use/stepper_demo.dart';
import 'package:flutter_example/example/08.package/cached_image_demo.dart';
import 'package:flutter_example/example/08.package/share_demo.dart';
import 'package:flutter_example/example/09.other/comment_demo.dart';
import 'package:flutter_example/example/09.other/status_bar_demo.dart';
import 'package:flutter_example/example/09.other/user_info_demo.dart';
import 'package:flutter_example/example/10.example_page/about/about_demo1.dart';
import 'package:flutter_example/example/10.example_page/about/about_demo2.dart';
import 'package:flutter_example/example/10.example_page/feedback/feedback_demo1.dart';
import 'package:flutter_example/example/10.example_page/my/persion_demo1.dart';
import 'package:flutter_example/utils/child_data_page_util.dart';

class DataMenu {
  String groupName;
  List<TwoLevelPageData> demo;
  List<TwoLevelPageData> document;
  String desc;

  DataMenu(this.groupName, this.demo, this.document, this.desc);
  // DataMenu(this.groupName);
}

final List<DataMenu> dataList = [
  // "TextField": [TextFieldDemo(), Container(), "表单"],

  DataMenu("结构", structDemo, structDocuments, "布局结构/滑动工具栏/顶部,底部导航/侧滑菜单"),
  DataMenu("按钮", buttonDemo, buttonDoc, "浮动/"), // 边框/圆形图标
  DataMenu("输入", inputDemo, inputDocuments, "复选/单选/切换/滑块/日期"),

  DataMenu("对话框", dialogDemo, dialogDocument, "简单/警告/底部滑动/轻量提示/手风琴对话框"),
  DataMenu("信息展示", infoViewDemo, infoViewDemoDocument, "小碎片"),
  DataMenu("常用布局", layoutDemo, layoutDocument, "卡片/表格/分割线/步骤"),
  // DataMenu("扩展", inputDemo, inputDocuments, "暂无/"),
  DataMenu("第三方库", packageDemo, packageDocument, "分享/图片缓存"),
  DataMenu("知识碎片", knowledgeDemo, knowledgeDocument, "沉浸式/评论/用户信息"),
  DataMenu("页面", examplePageDemo, examplePageDoc, "很多现成的页面"),
  // "补充": [Container(), Container(), "小技巧"],
];

// 1
List<TwoLevelPageData> structDemo = [
  TwoLevelPageData("MaterialApp", func: MaterialAppDemo()),
  TwoLevelPageData("Scaffold", func: ScaffolDemo()),
  TwoLevelPageData("Tabbar", func: TabbarDemo()),
  TwoLevelPageData("BottomNavigationBar", func: BottomNavigationBarDemo()),
  TwoLevelPageData("Appbar", func: AppbarDemo()),
  TwoLevelPageData("Drawer", func: DrawerDemo()),
];

List<TwoLevelPageData> structDocuments = [
  TwoLevelPageData("MaterialApp", func: MaterialAppDocument()),
  TwoLevelPageData("Scaffold", func: ScaffolDocument()),
  TwoLevelPageData("Tabbar", func: TabbarDocument()),
  TwoLevelPageData("BottomNavigationBar", func: BottomNavigationBarDocument()),
  TwoLevelPageData("Appbar", func: AppbarDocument()),
  TwoLevelPageData("Drawer", func: DrawerDocument()),
];

// 2

List<TwoLevelPageData> buttonDemo = [
  TwoLevelPageData("浮动按钮 FloatingActionButton",
      func: FloatingActionButtonDemo()),
];

List<TwoLevelPageData> buttonDoc = [
  TwoLevelPageData("浮动按钮 FloatingActionButton",
      func: FloatingActionButtonDocument()),
];
// 3 input
List<TwoLevelPageData> inputDemo = [
  TwoLevelPageData("复选框 Checkbox", func: CheckboxDemo()),
  TwoLevelPageData("单选框 Radio", func: RadioDemo()),
  TwoLevelPageData("开关 Switch", func: SwitchDemo()),
  TwoLevelPageData("滑块 Slider", func: SliderDemo()),
  TwoLevelPageData("日期 DateTime", func: DateTimeDemo()),
];

List<TwoLevelPageData> inputDocuments = [
  TwoLevelPageData("复选框 Checkbox", func: CheckboxDocument()),
  TwoLevelPageData("单选框 Radio", func: RadioDocument()),
  TwoLevelPageData("开关 Switch", func: SwitchDocument()),
  TwoLevelPageData("滑块 Slider", func: SliderDocument()),
  TwoLevelPageData("日期 DateTime", func: DateTimeDocument()),
];

// 4 dialog
List<TwoLevelPageData> dialogDemo = [
  TwoLevelPageData("提示框 SimpleDialog", func: SimpleDialogDemo()),
  TwoLevelPageData("警告框 AlertDialog", func: AlertDialogDemo()),
  TwoLevelPageData("底部滑动按钮  BottomSheet", func: BottomSheetDemo()),
  TwoLevelPageData("操作提示栏 Snackbar", func: SnackbarDemo()),
  TwoLevelPageData("收缩面板 ExpansionPanel", func: ExpansionPanelDemo()),
];

List<TwoLevelPageData> dialogDocument = [
  TwoLevelPageData("提示框 SimpleDialog", func: SimpleDialogDocument()),
  TwoLevelPageData("警告框 AlertDialog", func: AlertDialogDocument()),
  TwoLevelPageData("底部滑动按钮  BottomSheet", func: BottomSheetDocument()),
  TwoLevelPageData("操作提示栏 Snackbar", func: SnackbarDocument()),
  TwoLevelPageData("收缩面板 ExpansionPanel", func: ExpansionPanelDocument()),
];

// 5 信息展示
final List<TwoLevelPageData> infoViewDemo = [
  TwoLevelPageData("小碎片 Chip", func: ChipDemo()),
];

final List<TwoLevelPageData> infoViewDemoDocument = [
  TwoLevelPageData("小碎片 Chip", func: ChipDocument()),
];

// 6 layout 常用布局
final List<TwoLevelPageData> layoutDemo = [
  TwoLevelPageData("卡片 Card", func: CardTheDemo()),
  TwoLevelPageData("数据表格 DataTable", func: DataTableDemo()),
  TwoLevelPageData("分割线 Divider", func: DividerDemo()),
  TwoLevelPageData("步骤 Stepper", func: StepperDemo()),
];

final List<TwoLevelPageData> layoutDocument = [
  TwoLevelPageData("卡片 Card", func: CardDocument()),
  TwoLevelPageData("数据表格 DataTable", func: DataTableDocument()),
  TwoLevelPageData("分割线 Divider", func: DividerDocument()),
  TwoLevelPageData("步骤 Stepper", func: SetpperDocument()),
];

// 7

// 8

final List<TwoLevelPageData> packageDemo = [
  TwoLevelPageData("分享 Share", func: ShareDemo()),
  TwoLevelPageData("图片缓存  CachedImage", func: CachedImageDemo()),
];

final List<TwoLevelPageData> packageDocument = [
  TwoLevelPageData("分享 Share", func: ShareDocument()),
  TwoLevelPageData("图片缓存  CachedImage", func: CachedImageDocument()),
];

// 9

final List<TwoLevelPageData> knowledgeDemo = [
  TwoLevelPageData("沉浸式状态栏", func: StatusBarDemo()),
  TwoLevelPageData("评论区", func: CommentDemo()),
  TwoLevelPageData("用户信息", func: UserInfoDemo()),
];

final List<TwoLevelPageData> knowledgeDocument = [
  TwoLevelPageData("沉浸式状态栏", func: StatusBarDocument()),
  TwoLevelPageData("评论区", func: CommentDocument()),
  TwoLevelPageData("用户信息", func: UserInfoDocument()),
];

// 9  还需要在细分

final List<TwoLevelPageData> examplePageDemo = [
  TwoLevelPageData("关于页面", func: AboutDemo1()),
  TwoLevelPageData("反馈页面", func: FeedbackDemo1()),
  TwoLevelPageData("个人信息", func: PersionDemo1()),
  TwoLevelPageData("帮助", func: HelpDemo2()),
];
// 测试

final List<TwoLevelPageData> examplePageDoc = [
  TwoLevelPageData("关于页面", func: AboutDocument1()),
  TwoLevelPageData("反馈页面", func: FeedbackDocument1()),
  TwoLevelPageData("个人信息", func: PersionDocument1()),
  TwoLevelPageData("帮助", func: HelpDocument2()),
];
