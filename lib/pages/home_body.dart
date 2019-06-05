import 'package:flutter/material.dart';
import 'package:translate/model/word.dart';
import 'package:translate/widget/custom_icon.dart';

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
        TranslateBody(),
        TranslateRecords(),
      ],
    );
  }
}

class TranslateBody extends StatefulWidget {
  @override
  _TranslateBodyState createState() => _TranslateBodyState();
}

class _TranslateBodyState extends State<TranslateBody> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      elevation: 10.0,
      child: Container(
        height: 150,
        padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5),
//            color: Colors.blue,
        child: Column(
          children: <Widget>[
            InputText(),
            IconToolBar(),
          ],
        ),
      ),
    );
  }
}

///翻译记录
class TranslateRecords extends StatefulWidget {
  @override
  _TranslateRecordsState createState() => _TranslateRecordsState();
}

class _TranslateRecordsState extends State<TranslateRecords> {
  List<Word> _data = [
    Word(en: 'drawer', zh: '抽屉', isFavorite: true),
    Word(en: 'span', zh: '跨度', isFavorite: false),
    Word(en: 'scale', zh: '规模', isFavorite: false),
    Word(en: 'factor', zh: '因子', isFavorite: true),
    Word(en: 'direction', zh: '方向', isFavorite: true),
    Word(en: 'match', zh: '适合', isFavorite: false),
  ];

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      child: Card(
        margin: EdgeInsets.only(bottom: 1, top: 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Container(
          height: 60,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${_data[index].en}',
                    style: TextStyle(color: Colors.black87),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '${_data[index].zh}',
                    style: TextStyle(color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(),
              ),
              _getFavIcon(index,_data[index].isFavorite),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getFavIcon(int index,bool isFav) {
    ImageIcon icon = ImageIcon(
      isFav
          ? AssetImage('images/ic_star_active.png')
          : AssetImage('images/ic_star_inactive.png'),
      color: isFav ? Colors.yellow : Colors.black,
      size: 25,
    );
    return IconButton(
      icon: icon,
      onPressed: () {
        setState(() {
          _data[index].isFavorite = !isFav;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        color: Colors.grey[200],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: ListView.builder(
            itemBuilder: _itemBuilder,
            itemCount: _data.length,
          ),
        ),
      ),
    );
  }
}

///Icon工具栏
class IconToolBar extends StatefulWidget {
  @override
  _IconToolBarState createState() => _IconToolBarState();
}

class _IconToolBarState extends State<IconToolBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CustomIcon(
          title: '相机',
          imageProvider:
              AssetImage('images/quantum_ic_camera_enhance_black_24.png'),
        ),
        CustomIcon(
          title: '手写',
          imageProvider: AssetImage('images/quantum_ic_ink_pen_black_24.png'),
        ),
        CustomIcon(
          title: '对话',
          imageProvider: AssetImage('images/ic_double_mic_24dp.png'),
        ),
        CustomIcon(
          title: '语音',
          imageProvider:
              AssetImage('images/quantum_ic_keyboard_voice_black_24.png'),
        ),
      ],
    );
  }
}

///文本输入
class InputText extends StatefulWidget {
  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '点按即可输入文本',
        ),
        maxLines: 5,
        cursorColor: Colors.grey[500],
        cursorWidth: 2.0,
      ),
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
