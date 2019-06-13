import 'package:flutter/material.dart';
import 'package:flutter_app1/widget/card_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

///返回一个居中带图标和文本的Item
_getBottomItem(IconData icon, String text) {
  ///充满 Row 横向的布局
  return new Expanded(
    flex: 1,

    ///居中显示
    child: new Center(
      ///横向布局
      child: new Row(
        ///主轴居中,即是横向居中
        mainAxisAlignment: MainAxisAlignment.center,

        ///大小按照最大充满
        mainAxisSize: MainAxisSize.max,

        ///竖向也居中
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ///一个图标，大小16.0，灰色
          new Icon(
            icon,
            size: 16.0,
            color: Colors.grey,
          ),

          ///间隔
          new Padding(padding: new EdgeInsets.only(left: 5.0)),

          ///显示文本
          new Text(
            text,
            //设置字体样式：颜色灰色，字体大小14.0
            style: new TextStyle(color: Colors.grey, fontSize: 14.0),
            //超过的省略为...显示
            overflow: TextOverflow.ellipsis,
            //最长一行
            maxLines: 1,
          ),
        ],
      ),
    ),
  );
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        title: new Text("One Title"),
        backgroundColor: Colors.blue,
      ),
      body: new ListView.builder(
        itemBuilder: (context, index) {
          return new CardWidget();
        },
        itemCount: 20,
      ),
    );
  }
}
