import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/login_page.dart';
import 'sign_up_page.dart';
class HomePage extends StatefulWidget{
HomePage({Key? key}): super(key:key);

@override
_HomePage  createState() =>_HomePage();
}
class _HomePage extends State<HomePage>{
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    // شلنا الـ SafeArea من هون عشان الصورة تاخذ راحتها
    body: Column(
      children: [
        SizedBox(
          width: double.infinity, // تأكيد إن الحاوية بعرض الشاشة
          height: 400,
          child: Image.asset(
            'assets/Welcome.png',
            fit: BoxFit.cover, // أهم سطر: عشان الصورة تعبي كل الـ 400 طول والعرض كامل
          ),
        ),
        // إذا بدك باقي المحتوى يحترم الحواف، حط SafeArea هون
        Expanded(
          child: SafeArea(
            child: Column(
              children: [
                Text('اكتشف قصتك',
                style:GoogleFonts.alexandria(
                  fontSize: 35,
                  height: 0.9,
                  fontWeight: FontWeight.w900,
                )
                ),
                Text('المفضلة التالية',
                style:GoogleFonts.alexandria(
                  color: Color(0xff7C3AED),
                  fontSize: 35,
                  height: 1,
                  fontWeight: FontWeight.w900,
                )
                ),
                SizedBox(height: 30,),
                 Text('روايات و مقالات مسلسلة بقلم الجيل\n   '           
                 '         القادم من المبدعين ',
                style:GoogleFonts.alexandria(
                  color: const Color.fromRGBO(117, 117, 118, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: 
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                  backgroundColor:Colors.black,
                  elevation:10,
                  shadowColor:Colors.black,
                  ),
                  onPressed: (){
                     Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SignUpPage()),
            );
                  },
                
                child:Row(children: 
                [
                  SizedBox(width: 80,),
                Icon(Icons.arrow_back,
                color: Colors.white,
                size: 20,
                ),
                  Text('ابدأ الرحلة',
                style: GoogleFonts.alexandria(
                  color: Colors.white,
                  fontSize: 17,
                 ),
                 ) ,
                
                ],
                ),
                ),
                ),
                SizedBox(height: 30,),
                Row(children:[
                  SizedBox(width: 50,),
                  TextButton(onPressed: (){
                Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context)=>LoginPage()),
                );
                  },
                    child: Text('سجل دخولك',
                style: GoogleFonts.alexandria(
                  color:Color(0xff7C3AED),
                  
                ),
                    ),
                ),
                Text('لديك  بلفعل؟',
                style: GoogleFonts.alexandria(
                  color:Colors.black,
                  fontWeight: FontWeight.w800,
                ),
                )
                
                ],
                ) 
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
}