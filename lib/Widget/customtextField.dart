import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  String? hint;
  Color ?color;
  FontWeight ?fontWeight;
  double? size;
  String ?fontfamily;
  double ?height;
  int ?min;
  Widget?icon;


  CustomTextField({this.hint,this.fontWeight,this.color,this.size,this.fontfamily,this.height,this.min,this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12.0),
      child: TextFormField(
       expands: false,
       maxLines: min,
        decoration: InputDecoration(
          suffixIcon:icon,

            hintText:hint,

          hintStyle: TextStyle(
            color: color,
            fontSize: size,
            fontFamily: fontfamily,
            fontWeight: fontWeight,
            height: height,




          ),
          filled: true,
          fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),

              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10)),
            ),

           ),







          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topLeft: Radius.circular(5)),
          //   borderSide: BorderSide(
          //     color: Colors.blue,width: 3
          //   ),
          //
          //
          //
          // ),


        ),


      );


  }
}
