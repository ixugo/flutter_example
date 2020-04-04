import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/utils/InkWell_pictrue_util.dart';
import 'package:flutter_example/utils/container_util.dart';

class PostdataSource extends DataTableSource {
  final List _data = list;
  int _selectedCount = 0;
  @override
  DataRow getRow(int index) {
    var v = _data[index];

    return DataRow.byIndex(cells: [
      DataCell(Text(v["no"].toString())),
      DataCell(Text(v["title"])),
      DataCell(Text(v["author"]))
    ], index: index);
  }

  @override
  // 不确定行的数量可以返回 true
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => _selectedCount;
}

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

// 定义数据
List list = [
  {"select": false, "no": 1, "title": "红楼梦", "author": "曹雪芹"},
  {"select": false, "no": 4, "title": "西游记", "author": "吴承恩"},
  {"select": false, "no": 3, "title": "假如给我三天光明", "author": "海伦·凯勒"},
  {"select": false, "no": 2, "title": "鲁滨逊漂流记", "author": "笛福"},
];

class _DataTableDemoState extends State<DataTableDemo> {
  // 排序下标
  int _sortColumnIndex;
  // 是否按从小到大排序
  bool _sortAscending = true;

  //
  final PostdataSource _paginatedDataSource = PostdataSource();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        MyText(
          "数据表格 DataTable",
        ),
        CardMargin(
          child: DataTable(
              // 选择哪一列排序
              sortColumnIndex: _sortColumnIndex,
              // 是否按正序(从小到大)
              sortAscending: _sortAscending,
              // 首行标题
              columns: [
                // 标题 1
                DataColumn(
                  // 标题名称
                  label: Container(
                    child: Text("排序"),
                  ),
                  // 排序 参数(当前列下标, 正序or逆序)
                  onSort: (int index, bool ascending) {
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAscending = ascending;

                      // 排序的方法
                      list.sort((a, b) {
                        if (!ascending) {
                          final c = a;
                          a = b;
                          b = c;
                        }
                        return a['no'].compareTo(b['no']);
                      });
                    });
                  },
                ),
                // 标题 2
                DataColumn(
                  label: Text("Title"),
                ),
                // 标题 3
                DataColumn(label: Text("Author")),
              ],
              // 正文
              rows: list.map((v) {
                return DataRow(
                    // 选中状态
                    selected: v["select"],
                    // 选中后的回调
                    onSelectChanged: (bool value) {
                      setState(() {
                        v["select"] = value;
                      });
                    },
                    // 当前行的每列数据
                    cells: [
                      // 当前行第一列
                      DataCell(Text(v["no"].toString())),
                      // 当前行第二列
                      DataCell(Text(v["title"])),
                      // 当前行第三列
                      DataCell(Text(v["author"]))
                    ]);
              }).toList()),
        ),
        MyText(
          "分页显示表格 PaginatedDataTable",
        ),
        PaginatedDataTable(
          // 顶部标题
          header: Text("分页表格"),
          // 每页有多少行
          rowsPerPage: 2,
          // 每行标题
          columns: [
            // 行
            DataColumn(
              // 列标题
              label: Container(
                child: Text("No"),
              ),
              // 排序
              onSort: (index, ascending) {
                setState(() {
                  _sortColumnIndex = index;
                  _sortAscending = ascending;

                  list.sort((a, b) {
                    if (!ascending) {
                      final c = a;
                      a = b;
                      b = c;
                    }
                    return a['no'].compareTo(b['no']);
                  });
                });
              },
            ),
            // 第二列
            DataColumn(
              label: Container(
                child: Text("Title"),
                width: 100,
              ),
            ),
            // 第三列
            DataColumn(label: Text("Author")),
          ],
          // 正文数据
          source: _paginatedDataSource,
        )
      ]),
    );
  }
}

class DataTableDocument extends StatelessWidget {
  final String document = """
  <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td style="width:226px;">属性</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td colspan="2" style="width:226px;"><span style="color:#f33b45;"><strong>DataTable</strong></span></td>
		</tr><tr><td style="width:226px;">columns</td>
			<td style="width:573px;">表中列的配置和标签&nbsp; 类型 List&lt;DataColumn&gt;</td>
		</tr><tr><td style="width:226px;">sortColumnIndex</td>
			<td style="width:573px;">排序的列</td>
		</tr><tr><td style="width:226px;">sortAscending</td>
			<td style="width:573px;">是否按升序排序，默认true</td>
		</tr><tr><td style="width:226px;">rows</td>
			<td style="width:573px;">要在每一行中显示的数据 -- 不包括标题&nbsp; 类型 List&lt;DataRow&gt;</td>
		</tr><tr><td colspan="2" style="width:226px;"><span style="color:#f33b45;"><strong>DataColumn</strong></span></td>
		</tr><tr><td style="width:226px;">label</td>
			<td style="width:573px;">列标题</td>
		</tr><tr><td style="width:226px;">tooltip</td>
			<td style="width:573px;">说明</td>
		</tr><tr><td style="width:226px;">numeric</td>
			<td style="width:573px;">该列是否表示数值数据，默认false</td>
		</tr><tr><td style="width:226px;">onSort</td>
			<td style="width:573px;">用户要求使用此列对表进行排序时调用</td>
		</tr><tr><td colspan="2" style="width:226px;"><span style="color:#f33b45;"><strong>DataRow</strong></span></td>
		</tr><tr><td style="width:226px;">selected</td>
			<td style="width:573px;">选中行，默认false</td>
		</tr><tr><td style="width:226px;">onSelectChanged</td>
			<td style="width:573px;">选中行监听</td>
		</tr><tr><td style="width:226px;">cells</td>
			<td style="width:573px;">这一行的数据。</td>
		</tr><tr><td colspan="2" style="width:226px;"><strong><span style="color:#f33b45;">DataCell</span></strong></td>
		</tr><tr><td style="width:226px;">child</td>
			<td style="width:573px;">子组件</td>
		</tr><tr><td style="width:226px;">placeholder</td>
			<td style="width:573px;">子组件是否实际上是占位符，默认false</td>
		</tr><tr><td style="width:226px;">showEditIcon</td>
			<td style="width:573px;">单元格的末尾显示编辑图标，默认false</td>
		</tr><tr><td style="width:226px;">onTap</td>
			<td style="width:573px;">点击</td>
		</tr><tr><td colspan="2" style="width:226px;"><strong><span style="color:#f33b45;">PaginatedDataTable</span></strong></td>
		</tr><tr><td style="width:226px;">header</td>
			<td style="width:573px;">表的标题</td>
		</tr><tr><td style="width:226px;">actions</td>
			<td style="width:573px;">图标按钮显示在表的右上角</td>
		</tr><tr><td style="width:226px;">columns</td>
			<td style="width:573px;">表中列的配置和标签&nbsp; 类型 List&lt;DataColumn&gt;</td>
		</tr><tr><td style="width:226px;">sortColumnIndex</td>
			<td style="width:573px;">排序的列</td>
		</tr><tr><td style="width:226px;">sortAscending</td>
			<td style="width:573px;">是否按升序排序，默认true</td>
		</tr><tr><td style="width:226px;">onSelectAll</td>
			<td style="width:573px;">全选/全部选&nbsp; 操作</td>
		</tr><tr><td style="width:226px;">initialFirstRowIndex</td>
			<td style="width:573px;">首次创建时显示的索引，默认0</td>
		</tr><tr><td style="width:226px;">onPageChanged</td>
			<td style="width:573px;">翻页监听</td>
		</tr><tr><td style="width:226px;">rowsPerPage</td>
			<td style="width:573px;">每页行数，默认defaultRowsPerPage</td>
		</tr><tr><td style="width:226px;">onRowsPerPageChanged</td>
			<td style="width:573px;">每页行数改变监听</td>
		</tr><tr><td style="width:226px;">availableRowsPerPage</td>
			<td style="width:573px;">为用户提供每页行数选择</td>
		</tr><tr><td style="width:226px;">dragStartBehavior</td>
			<td style="width:573px;">默认DragStartBehavior.start</td>
		</tr><tr><td style="width:226px;">source</td>
			<td style="width:573px;">
			<p>数据源</p>

			<p>使用PaginatedDataTable应配合DataTableSource一起</p>

			<p>新建一个Class继承DataTableSource这个抽象类，实现4个方法：</p>

			<p>&nbsp;</p>

			<p>&nbsp;&nbsp; &nbsp; DataRow getRow(int index) { //根据索引获取内容行 }<br>
			&nbsp; &nbsp; &nbsp;bool get isRowCountApproximate =&gt; false;<br>
			&nbsp; &nbsp; &nbsp;int get rowCount =&gt; _shops.length;//数据总条数<br>
			&nbsp; &nbsp; &nbsp;int get selectedRowCount =&gt; _selectCount;//选中的行数</p>
			</td>
		</tr></tbody></table>""";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(
          "数据-列表定义",
        ),
        InkWellPictrue(
          "http://img.golang.space/PicGo/2020-03-09-s-36-dataTable1.png",
        ),
        MyText(
          "DataTable",
        ),
        InkWellPictrue(
          "http://img.golang.space/PicGo/2020-03-09-s-42-dataTable2.png",
        ),
        MyText(
          "数据-继承 DataTableSource",
        ),
        InkWellPictrue(
          "http://img.golang.space/PicGo/2020-03-09-s-05-dataTable3.png",
        ),
        MyText(
          "PaginatedDataTable",
        ),
        InkWellPictrue(
          "http://img.golang.space/PicGo/2020-03-09-s-11-dataTable4.png",
        ),
        MyHtml(document)
      ],
    );
  }
}
