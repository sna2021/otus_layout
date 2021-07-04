import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    /// TODO: Сделать верстку экрана "Карточка коктейля" по модели Cocktail cocktail
    /// Ссылка на макет
    /// https://www.figma.com/file/d2JJUBFu7Dg0HOV30XG7Z4/OTUS-FLUTTER.-%D0%A3%D1%80%D0%BE%D0%BA-3-%D0%94%D0%97?node-id=23%3A85
    ///для того чтобы весь контент поместился, необходимо использовать SingleChildScrollView()
    ///
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: 57,
              ),
              Picture(),
              SizedBox(
                height: 33,
              ),
              CoctailName(),
              Ingredients(),
              SizedBox(
                height: 24,
              ),
              Recipe(),
              SizedBox(
                height: 24,
              ),
              Stars(),
            ],
          ),
        ]));
  }
}
