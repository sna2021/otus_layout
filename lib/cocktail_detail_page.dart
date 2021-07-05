import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';
import 'package:homework/widget/coctail_name.dart';
import 'package:homework/widget/ingredients.dart';
import 'package:homework/widget/picture.dart';
import 'package:homework/widget/recipe.dart';
import 'package:homework/widget/stars.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //MARK: Тут нет необходимости в  Column , т.к ListView итак вертикально располагает внутри себя виджеты
        body: ListView(children: [
      Column(
        children: [
          Picture(
            cocktail: cocktail,
          ),
          CoctailName(
            cocktail: cocktail,
          ),
          Ingredients(
            cocktail: cocktail,
          ),
          Recipe(
            cocktail: cocktail,
          ),
          Stars(),
        ],
      ),
    ]));
  }
}
