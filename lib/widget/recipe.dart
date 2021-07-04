import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF201F2C),
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Text(
            "Инструкция длс приготовления",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          _instruction("Первая"),
          SizedBox(
            height: 16,
          ),
          _instruction("Вторая"),
          SizedBox(
            height: 16,
          ),
          _instruction("Третья"),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

Widget _instruction(String instruction) {
  return Container(
    color: Color(0xFF201F2C),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 2.0,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          instruction,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
