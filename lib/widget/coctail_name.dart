import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework/models/models.dart';

Widget _buildInfo(String labelText, String labelChip) {
// MARK:  Container не выполняет никакой роли здесь
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.white),
        ),
        // можно использовать const
        SizedBox(
          height: 7,
        ),
        Chip(
          backgroundColor: Colors.black,
          label: Text(
            labelChip,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
       // можно использовать const
        SizedBox(
          height: 32,
        )
      ],
    ),
  );
}

class CoctailName extends StatelessWidget {
  const CoctailName({Key key, this.cocktail}) : super(key: key);
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      color: const Color(0xFF1A1927),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MARK: можно использовать const
          SizedBox(
            height: 33,
          ),
          Row(
            children: [
            // MARK:  необходимо использовать Flexible
              Text(
                cocktail.name,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              SvgPicture.asset('assets/images/icon_hart.svg')
            ],
          ),
          // MARK: можно использовать const
          SizedBox(
            height: 30,
          ),
          _buildInfo("Категория коктейля", cocktail.category.value),
          _buildInfo("Тип коктейлей", cocktail.cocktailType.value),
          _buildInfo("Тип стекла", cocktail.glassType.value),
        ],
      ),
    );
  }
}
