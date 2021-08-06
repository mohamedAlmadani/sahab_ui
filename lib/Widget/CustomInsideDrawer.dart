import 'package:flutter/material.dart';
class CustomInsideDrawer extends StatelessWidget {
  String?image;
  Function? ontap;
  String ?title;
 CustomInsideDrawer({this.image,this.ontap,this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        ontap!();
      },
      leading: Image.asset(image??'',color: Colors.white,),


      title: Text(title??'',style: TextStyle(
        color: Colors.white,

        fontSize: 16,
        fontFamily: 'GE_SS_Two_Medium',
      ),),

    );
  }
}



