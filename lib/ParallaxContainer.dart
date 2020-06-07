import 'package:flutter/material.dart';

int n;
class ParallaxContainer extends StatelessWidget {
  final String index;
  final double offset;
  final double i;
  final String text;
  final double padding;
  final Function onPressed;

  ParallaxContainer({this.index, this.offset, this.i, this.text,this.onPressed,this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (value){
        n = 1;
        onPressed(n,index);
      },
      onTapUp: (value){
        n = 2;
        onPressed(n,index);
      },
          child: AnimatedPadding(
            duration: Duration(milliseconds: 150),
        padding: EdgeInsets.only(left: padding, right: padding, bottom: padding == 25.0 ? 40.0 : 50.0,top: padding == 25.0 ? 0.0 : 10.0,),
        child: Stack(
          children: [
            Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x00000000),
                              Color(0x00000000),
                              Color(0xff000000),
                            ],
                          ),
                        ),
                        child: Image.asset(
                          'assets/$index.jpg',
                          fit: BoxFit.fitWidth,
                          alignment: Alignment(0.0, -((offset.abs() + 0.4) - i)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 35.0,
                          child: FloatingActionButton(
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 28.0),
                            ),
                            mini: true,
                            onPressed: () {},
                            splashColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 35.0),
                        height: 110.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Exclusive Playstation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'PS4',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'SlimPlay'
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            (index == '0')
                ? OverflowBox(
                    minWidth: 0.0,
                    maxWidth: 200.0,
                    minHeight: 0.0,
                    maxHeight: 100.0,
                    alignment: Alignment(0.0, -1.45),
                    child: Column(
                      children: [
                        Text(
                          'GREAT GAMES',
                          style: TextStyle(fontSize: 16.0, color: Colors.blue),
                        ),
                        Text(
                          'Coming Soon',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
