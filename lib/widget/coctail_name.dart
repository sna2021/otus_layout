import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget _buildInfo(String labelText, String labelChip) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(color: Colors.white),
        ),
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
        SizedBox(
          height: 32,
        )
      ],
    ),
  );
}

class CoctailName extends StatelessWidget {
  const CoctailName({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      color: const Color(0x1A1927),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Арбузное мохито",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              SvgPicture.asset('assets/images/icon_hart.svg')
            ],
          ),
          SizedBox(
            height: 30,
          ),
          _buildInfo("Категория коктейля", "Cocktail"),
          _buildInfo("Тип коктейлей", "Алкогольный"),
          _buildInfo("Тип стекла", "Хайбол"),
        ],
      ),
    );
  }
}
