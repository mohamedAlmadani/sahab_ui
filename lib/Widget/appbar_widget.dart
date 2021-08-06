import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

   IconData ?icon;
  String ?text;
  Function ?ontap;
  IconData ?iconaction;
  Function ?onTaptwo;

  CustomAppBar({ this.text, this.icon, this.ontap, this.iconaction,this.onTaptwo,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        leading: IconButton(
          icon: Icon(icon),
          onPressed: () {
            ontap!();
          },
          color: Colors.black87,
        ),

        title: Text(
          text??'',
          style: TextStyle(
              color: Color(0xFF355ABE),
              fontFamily: 'GE_SS_Two_Medium',
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(iconaction, color: Colors.black87,),
              onPressed: () {
                onTaptwo!();
              }


              )
        ],
      ),
    );
  }
}
