import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x1A1927),
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        children: [
          circleStarFilled(),
          SizedBox(
            width: 16,
          ),
          circleStarFilled(),
          SizedBox(
            width: 16,
          ),
          circleStarFilled(),
          SizedBox(
            width: 16,
          ),
          circleStarNotFilled(),
          SizedBox(
            width: 16,
          ),
          circleStarNotFilled(),
        ],
      ),
    );
  }
}

Widget circleStarFilled() {
  return Stack(
    children: [
      CircleAvatar(backgroundColor: Colors.grey, radius: 27),
      Positioned(
        child: Icon(
          Icons.star_outlined,
          color: Colors.white,
          size: 44,
        ),
        bottom: 4,
        right: 4,
        left: 4,
        top: 4,
      ),
    ],
  );
}

Widget circleStarNotFilled() {
  return Stack(
    children: [
      CircleAvatar(backgroundColor: Colors.grey, radius: 27),
      Positioned(
        child: Icon(
          Icons.star_outlined,
          color: Colors.black,
          size: 44,
        ),
        bottom: 4,
        right: 4,
        left: 4,
        top: 4,
      ),
    ],
  );
}
