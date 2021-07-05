import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';

class Recipe extends StatelessWidget {
  const Recipe({Key key, this.cocktail}) : super(key: key);
  final Cocktail cocktail;

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
          _instruction(cocktail.instruction),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

Widget _instruction(String instruction) {
  var instructions = instruction.split("-");
  instructions.removeAt(0);
  var newInstructions = instructions
      .map((e) => TextSpan(
            children: [
              TextSpan(text: "•", style: TextStyle(color: Colors.white)),
              TextSpan(text: e, style: TextStyle(color: Colors.white)),
            ],
          ))
      .toList(); 
  //MARK: По сути тут не нужен container т.к он только задает цвет. А это цвет задан в контейнере выше.
  return Container(
      color: Color(0xFF201F2C),
      // MARK: Тут не нужен Flexible
      child: Flexible(child: Text.rich(TextSpan(children: newInstructions))));
}
