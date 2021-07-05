import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({Key key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    //MARK: можно использовать const для всех SizedBox
    return Container(
      color: Color(0xFF1A1927),
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [ 
          // MARK: Можно использовать vertical отступ в padding, тогда и Column не нужен. 
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
             //MARK: Нужно использовать Flexible, Иначе будут проблемы на маленьких экранах
              SizedBox(
                height: 24,
              ),
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
        ],
      ),
    );
  }
}

// MARK: Название метода должно содержать в себе действие
Widget circleStarFilled() {
  // MARK: Лучше сделать через Container + BoxDecoration
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
// MARK: Лучше сделать через Container + BoxDecoration
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
