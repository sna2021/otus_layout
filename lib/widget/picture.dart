import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework/models/src/model/cocktail.dart';

class Picture extends StatelessWidget {
  final Cocktail cocktail;

  const Picture({this.cocktail, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: 28,
      ),
      //MARK: Тут нужно использовать Stack. Тк кнопки накладываются поверх изображения
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/icon_back.svg'),
          Spacer(),
          Image.network(
            cocktail.drinkThumbUrl,
            height: 375,
            width: 320,
          ),
          Spacer(),
          SvgPicture.asset('assets/images/icon_out.svg'),
        ],
      ),
    );
  }
}
