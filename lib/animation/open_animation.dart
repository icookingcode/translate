import 'package:flutter/material.dart';
import 'package:translate/pages/index_page.dart';

class OpenAnimation extends StatefulWidget {
  @override
  _OpenAnimationState createState() => _OpenAnimationState();
}

class _OpenAnimationState extends State<OpenAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation = Tween(begin: 0, end: 1).animate(_controller);

    _animation.addStatusListener((status) {
      if (AnimationStatus.completed == status) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
            return IndexPage();
          }),
        (route) => route == null,
        );
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeTransition(opacity: _controller,child: Image.asset('images/splash.jpg',fit: BoxFit.cover,),),
    );
  }
}
