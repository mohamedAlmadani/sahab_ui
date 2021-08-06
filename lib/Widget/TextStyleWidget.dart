
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String ?namefamily;
  double ?numsize;
  Color ?namecolor;
  FontWeight ?namefont;
  double ?numberletter;
  double ?numheight;
  TextAlign? nametextalign;
  String ?text;
  TextDirection ?textDirection;
  Function ?ontap;
  EdgeInsetsGeometry ?margin;
  CustomText({this.namefamily,this.namecolor,this.namefont,this.nametextalign,this.numberletter,this.numheight,this.numsize,this.text,this.textDirection,this.ontap,this.margin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: GestureDetector(
        onTap: (){
          ontap!();

        },
        child: Text (text??'',

          style: TextStyle(
            fontFamily: namefamily,
            fontSize: numsize,
            color: namecolor,
            fontWeight: namefont,
              letterSpacing:numberletter,
            height: numheight,





          ),
          textAlign:nametextalign ,
          textDirection:textDirection ,






        ),
      ),
    );
  }
}
