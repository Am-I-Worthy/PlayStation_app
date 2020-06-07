import 'package:flutter/material.dart';

import 'ParallaxContainer.dart';

String index = '-1';

class ParallaxPageView extends StatefulWidget {
  const ParallaxPageView({
    Key key,
    @required PageController controller,
    @required this.offset,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;
  final double offset;

  @override
  _ParallaxPageViewState createState() => _ParallaxPageViewState();
}

class _ParallaxPageViewState extends State<ParallaxPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      pageSnapping: false,
      scrollDirection: Axis.vertical,
      controller: widget._controller,
      children: [
        ParallaxContainer(
          index: '0',
          offset: widget.offset,
          i: 0.0,
          text: 'Apex Legends',
          padding: index == '0' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '1',
          offset: widget.offset,
          i: 1.0,
          text: 'W W 13',
          padding: index == '1' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '2',
          offset: widget.offset,
          i: 2.0,
          text: 'Sacred Games',
          padding: index == '2' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '3',
          offset: widget.offset,
          i: 3.0,
          text: 'Farcry 5',
          padding: index == '3' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '4',
          offset: widget.offset,
          i: 4.0,
          text: 'Just Cause 3',
          padding: index == '4' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '5',
          offset: widget.offset,
          i: 5.0,
          text: 'Deadpool',
          padding: index == '5' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '6',
          offset: widget.offset,
          i: 6.0,
          text: 'Terminator Genesis',
          padding: index == '6' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '7',
          offset: widget.offset,
          i: 7.0,
          text: 'Fortnite',
          padding: index == '7' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '8',
          offset: widget.offset,
          i: 8.0,
          text: 'Uncharted 4',
          padding: index == '8' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '9',
          offset: widget.offset,
          i: 9.0,
          text: 'Game of Thrones',
          padding: index == '9' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
        ParallaxContainer(
          index: '10',
          offset: widget.offset,
          i: 10.0,
          text: 'Crysis',
          padding: index == '10' ? 35.0 : 25.0,
          onPressed: (value, ind) {
            setState(() {
              print("value = $value");
              if (value == 1) {
                index = ind;
                print(index);
              }
              if (value == 2) {
                index = '-1';
                print(index);
              }
            });
          },
        ),
      ],
    );
  }
}
