import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
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
          buildIcon(Icons.menu),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(
              FontAwesomeIcons.playstation,
              size: 40.0,
              color: Colors.blue,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildIcon(Icons.shopping_cart),
                buildIcon(Icons.search),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // JUST NEED A STATIC BUTTON SO I USED METHOD WHICH RETURN A CUSTOM BUTTON WITH ICON
  ClipRRect buildIcon(IconData icon) {
    return ClipRRect(
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
              icon,
              color: Colors.blue,
              size: 28.0,
            ),
          ),
        ),
      ),
    );
  }
}
