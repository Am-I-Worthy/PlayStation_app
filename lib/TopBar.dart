import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      height: 60.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60.0),
            child: Material(
              color: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
              ),
              child: IconButton(
                splashColor: Colors.black38,
                icon: Icon(
                  Icons.drag_handle,
                  size: 35.0,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                FontAwesomeIcons.playstation,
                size: 40.0,
                color: Colors.blue,
              )),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    child: Material(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {},
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    child: Material(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.black,
                        child: Icon(
                          Icons.search,
                          color: Colors.blue,
                          size: 28.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
