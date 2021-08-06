import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
class CustomShape extends StatelessWidget {
  String ?text;
  IconData? icon;
  Function ?ontap;
  CustomShape({this.text,this.icon,this.ontap});


  @override
  Widget build(BuildContext context) {

    return   GestureDetector(
      onTap: (){
        ontap!();

      },
      child:Directionality(
        textDirection: translator.currentLanguage == 'en'
            ? TextDirection.rtl
            : TextDirection.ltr,

        child: Container(

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
              Flexible(child: Icon(icon,color: Colors.white,size: 19,)),
              SizedBox(width: 20.w,),

              Flexible(child: Text(text??"",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500, fontFamily: 'GE_SS_Two_Medium',fontSize: 18,))),




            ],
          ),

        ),
      ),
    );
}
}
