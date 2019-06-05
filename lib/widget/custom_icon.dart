import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  final String title;
  final IconData iconData;
  final ImageProvider imageProvider;
  final double width;

  CustomIcon({@required this.title, this.iconData, this.imageProvider ,this.width = 60});

  @override
  _CustomIconState createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: FlatButton(
        padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _getIcon(),
            Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getIcon() {
    if (widget.iconData != null) {
      return Icon(
        widget.iconData,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    } else if (widget.imageProvider != null) {
      return ImageIcon(
        widget.imageProvider,
        color: Color(0xff3F51B5),
        size: 25.0,
      );
    } else {
      return Container();
    }
  }
}
