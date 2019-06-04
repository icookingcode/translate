import 'package:flutter/material.dart';

Color primaryColor = Colors.blue[600];

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TranslateHeader(),
        Card(
          margin: EdgeInsets.all(0.0),
          child: Container(
            height: 150,
            padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
//            color: Colors.blue,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '点按即可输入文本',
                    ),
                    maxLines: 5,
                    cursorColor: Colors.grey[500],
                    cursorWidth: 2.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TranslateHeader extends StatefulWidget {
  @override
  _TranslateHeaderState createState() => _TranslateHeaderState();
}

class _TranslateHeaderState extends State<TranslateHeader> {
  String _firstLanguage = '英语';
  String _secondLanguage = '中文(简体)';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _firstLanguage,
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  ImageIcon(
                    AssetImage('images/spinner_blue.9.png'),
                    color: primaryColor,
                  ),
                ],
              ),
              onTap: () {},
            ),
          )),
          Material(
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('images/ic_swap.png'),
                color: primaryColor,
              ),
            ),
          ),
          Expanded(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _secondLanguage,
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                  ImageIcon(
                    AssetImage('images/spinner_blue.9.png'),
                    color: primaryColor,
                  ),
                ],
              ),
              onTap: () {},
            ),
          )),
        ],
      ),
    );
  }
}
