import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ContainerText extends StatelessWidget {
  final String title;

  ContainerText(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      // color: Colors.blue[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              title,
              textAlign: TextAlign.left,
              // style: Theme.of(context).textTheme.title,
            ),
          ),
          // Divider(
          //   indent: 5,
          //   endIndent: 5,
          //   color: Theme.of(context).primaryColor,
          //   thickness: 2,
          //   // thickness: 0.7,
          // ),
        ],
      ),
    );
  }
}

class CardMargin extends StatelessWidget {
  CardMargin({this.child, this.padding = 0});
  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 32),
      child: Container(
        padding: EdgeInsets.all(padding),
        child: this.child,
      ),
    );
  }
}

class MyTextDescortion extends StatelessWidget {
  final String title;
  MyTextDescortion(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 5, left: 15),
      child: Text(
        title,
        // style: Theme.of(context).accentTextTheme.body1,
      ),
    );
  }
}

class MyText extends StatelessWidget {
  MyText(this.title, {this.alignment});

  final String title;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment != null ? alignment : Alignment.center,
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
      child: Text(
        title,
        // style: Theme.of(context).accentTextTheme.body1,
      ),
    );
  }
}

class MyHtml extends StatelessWidget {
  final String value;
  MyHtml(this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Html(
        data: value,
        // defaultTextStyle: Theme.of(context).accentTextTheme.body1,
      ),
    );
  }
}
