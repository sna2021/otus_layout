import 'package:flutter/material.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Center(
            child: Text(
              "Ингредиенты:",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 19,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Text(
                "Листья мяты",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(),
              Text(
                "4 шт",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Листья мяты",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(),
              Text(
                "4 шт",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Листья мяты",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(),
              Text(
                "4 шт",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Листья мяты",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(),
              Text(
                "4 шт",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Text(
                "Листья мяты",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
              Spacer(),
              Text(
                "4 шт",
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
