import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';
import 'package:homework/models/src/model/ingredient_definition.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key key, this.cocktail}) : super(key: key);
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
       //MARK: можно использовать const
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(children: _ingredient(cocktail.ingredients)),
    );
  }
}

//MARK: Название метода должно содержать в себе действие
List<Widget> _ingredient(Iterable<IngredientDefinition> list) {
  var widgetList = <Widget>[]; 
 //MARK: можно использовать const для всех SizedBox
  widgetList.add(SizedBox(height: 24));
  widgetList.add(
    Center(
      child: Text(
        "Ингредиенты:",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 19,
        ),
      ),
    ),
  );
  widgetList.add(SizedBox(height: 24));
  for (var iter in list) {
    widgetList.add(__ingredientElem(iter.ingredientName, iter.measure));
    widgetList.add(SizedBox(
      height: 16,
    ));
  }
  widgetList.add(SizedBox(
    height: 24,
  ));
  return widgetList;
}

//MARK: Название метода должно содержать в себе действие
Widget __ingredientElem(String ingredient, String amount) {
  return Row(children: [
    //MARK: Нужно использовать Flexible
    Text(
      ingredient,
      style: TextStyle(
        color: Colors.white,
        decoration: TextDecoration.underline,
      ),
    ),
    Spacer(),
    Text(
      amount,
      style: TextStyle(
        color: Colors.white,
      ),
    )
  ]);
}
