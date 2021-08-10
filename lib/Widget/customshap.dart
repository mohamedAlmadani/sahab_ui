import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
class CustomShape extends StatelessWidget {
  String ?text;
  IconData? icon;
  Function ?ontap;
  EdgeInsets ?edgeInsets;
  CustomShape({this.text,this.icon,this.ontap,this.edgeInsets});


  @override
  Widget build(BuildContext context) {

    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        GestureDetector(
          onTap: (){
            ontap!();

          },
          child:Container(
            margin: edgeInsets,

            decoration: BoxDecoration(
                color: Color(0xFF355ABE),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),topLeft:Radius.circular(16) )
            ),
            width: 125.0.w,
            height: 57.0.h,
            // color: Color(0xFF355ABE),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // textDirection: translator.currentLanguage == 'en'
              //     ? TextDirection.ltr
              //     : TextDirection.rtl,
              // mainAxisAlignment: translator.currentLanguage == 'en'
              //     ? MainAxisAlignment.end
              //     : MainAxisAlignment.start,


              children: [
                Flexible(child: Text(text??"",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontFamily: 'GE_SS_Two_Medium',fontSize: 18,))),
                SizedBox(width: 20.w,),
                Flexible(child: Icon(icon,color: Colors.white,size: 19,)),





              ],
            ),

          ),
        ),
      ],
    );
}
}
