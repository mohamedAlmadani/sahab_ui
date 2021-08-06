import 'package:flutter/material.dart';
import 'package:sahab/models/slider.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl??''),

            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title??'',
          style:TextStyle(
              color: Color(0xFF272727),
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'GE_SS_Two_Medium'),


        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description??"",
          style: TextStyle(
              color: Color(0xFF4D4D4D),
              fontSize: 15.0,
              letterSpacing: 0.014,
              fontWeight: FontWeight.w600,
              height: 1.36,
              fontFamily: 'GE_SS_Two_Medium'),

        ),
      ],
    );
  }
}