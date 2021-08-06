import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {

          },
          color: Colors.black87,
        ),

        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/personchat.png'??'',width: 35,height: 35,),
            SizedBox(width: 5,),
            Text(
              'محمد سارة'??'',
              style: TextStyle(
                  color: Color(0xFF355ABE),
                  fontFamily: 'GE_SS_Two_Medium',
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w300),
            ),

          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.black87,),
              onPressed: () {

              }


          )
        ],
      ),

      bottomNavigationBar: Container(
        width: 375.0.w,
        height: 57.17.h,
        color: Color(0xff355ABE),
        child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [


          
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('assets/images/send.png',color: Colors.white,)),
            SizedBox(width: 10.w,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextField(

                  decoration: InputDecoration(
                    labelText: ' أكتب',


                     // border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 1.h),
              width: 325.0.w,
              height: 84.0.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Color(0xff355ABE),
                  border: Border.all(color: Colors.grey)),
              child: ListTile(
                leading: Image.asset('assets/images/woman.png'),
                title: Text(
                  'حقيبة نسائية  ماركة فخمه',
                  style: TextStyle(
                    fontFamily: 'GE_SS_Two_Medium',
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),

                ),
                subtitle: Row(
                  children: [
                    Icon(  Icons.location_on,color: Colors.white,size: 18,),
                    SizedBox(width: 5.w,),
                    Text('الرياض',
                      style: TextStyle(
                        fontFamily: 'GE_SS_Two_Medium',
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  ],
                ),
              )
            ),
            SizedBox(height: 30.h,),
            ListTile(leading: Image.asset('assets/images/personchat.png',width: 40.w,height: 40.h,),
              subtitle: Bubble(
                margin: BubbleEdges.only(top: 30),
              //  radius: Radius.zero,
                alignment: Alignment.center,
                // nipWidth: 8,
                // nipHeight: 24,
             //   nip: BubbleNip.rightTop,
                color: Colors.white,
                child: Text(                    'السلام عليكم\nمرحبا كيف الحال ؟  احتاج تفاصيل اكثر عن الاعلان وكيف يمكن التوصيل الى العنوان المناسب', textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',

                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400

                  ),
                ),
              ),


            ),
            SizedBox(height: 10.h,),

            ListTile(
              trailing:  Image.asset('assets/images/person.png',width: 40.w,height: 40.h),
              subtitle:Bubble(

                alignment: Alignment.topLeft,

                color: Colors.grey[200],
                child: Text(  '   هل تم التواصل معك', textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'GE_SS_Two_Medium',

                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300

                  ),
                ),
              ),


              // Container(
              //
              //
              //   margin: EdgeInsets.symmetric(vertical: 25.h,horizontal: 15.w),
              //   child: Card(
              //
              //     child: Text(
              //       'هل تم التواصل معك',
              //       style: TextStyle(
              //           fontFamily: 'GE_SS_Two_Medium',
              //
              //           fontSize: 14.0,
              //           color: Colors.black,
              //           fontWeight: FontWeight.w500
              //
              //       ),
              //
              //     ),
              //   ),
              // ),
            )
            


          ],
        ),
      ),
    );
  }
}
