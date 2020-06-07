import 'package:flutter/material.dart';
import 'ParallaxPageView.dart';
import 'TopBar.dart';


void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController _controller;
  double offset = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.6);
    _controller.addListener(() {
      setState(() {
        offset = _controller.page;
        //print(offset);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ParallaxPageView(
          controller: _controller,
          offset: offset,
        ),
        TopBar(),
      ],
    );
  }
}
