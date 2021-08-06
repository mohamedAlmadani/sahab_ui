import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sahab/Screens/home.dart';
import 'package:sahab/Widget/appbar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutTheApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(icon: Icons.arrow_back_ios,


        text: translator.translate('AboutTheApp'),
        iconaction: Icons.search ,
          ontap: (){
            Get.to(Home());
          }

      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/logo.png'),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'SAHAB',
                style: TextStyle(
                  fontSize: 32.0,
                  color: const Color(0xFF355ABE),
                  letterSpacing: 0.032,
                  fontWeight: FontWeight.w700,
                  height: 0.03,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(
                height: 30.h,
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.\nإذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.\nومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.\nهذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً.',
              style: TextStyle(
                fontFamily: 'GE_SS_Two_Medium',
                fontSize: 16.0.sp,
                color: const Color(0xFF272727),
                fontWeight: FontWeight.w300,
                height: 1.31,
              ),
              textAlign: TextAlign.right,
            ),
          ),
            ],
          ),
        ),
      ),

    );
  }
}
