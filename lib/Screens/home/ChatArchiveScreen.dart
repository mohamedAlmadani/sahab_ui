import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home/ChatScreen.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatArchive extends StatefulWidget {
  @override
  _ChatArchiveState createState() => _ChatArchiveState();
}

class _ChatArchiveState extends State<ChatArchive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: translator.translate('Chat'),
        icon: Icons.filter_list,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Slidable(

              actionPane: SlidableBehindActionPane(),
               actionExtentRatio: 0.12,
              child: ListTile(
                onTap: (){
                  Get.to(ChatScreen());
                },
                leading: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/personchat.png'),
                      radius: 25,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 35.w),
                      alignment: Alignment.center,
                      width: 20.0.w,
                      height: 20.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF355ABE),
                      ),
                      child: Text(
                        '2',

                      ),
                    ),
                  ],
                ),
                title: Text(
                  'سارة محمد',
                  style: TextStyle(
                    fontFamily: 'GE_SS_Two_Medium',
                    fontSize: 14.0,
                    color: const Color(0xFF272727),
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                  textAlign: TextAlign.right,
                ),
                subtitle: Text(
                  'بامكانك تزويدنا بمكان التوصيل لكي نقوم بارسال الطلب ان شاء الله',
                  style: TextStyle(
                    fontFamily: 'GE_SS_Two_Medium',
                    fontSize: 10,
                    color:Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),


                ),
                trailing: Text('1:20'),
              ),
              actions: [
                IconSlideAction(

                  color: Colors.blue,
                  // icon: Icons.delete,
                  iconWidget: Icon(Icons.delete,color: Colors.white,)


                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
