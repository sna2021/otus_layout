import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x201F2C),
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
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
          _instruction("Вторая"),
          _instruction("Третья"),
        ],
      ),
    );
  }
}

Widget _instruction(String instruction) {
  return Container(
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
