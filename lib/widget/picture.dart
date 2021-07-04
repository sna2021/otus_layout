import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Picture extends StatelessWidget {
  const Picture({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
        horizontal: 28,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 57,
          ),
          SvgPicture.asset('assets/images/icon_back.svg'),
          Spacer(),
          SvgPicture.asset('assets/images/icon_out.svg'),
        ],
      ),
    );
  }
}
