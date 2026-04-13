import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage2 extends StatefulWidget{
SignUpPage2({Key? key}):super(key:key);

@override
_SignUpPage2 createState()=>_SignUpPage2();
}

class _SignUpPage2 extends State<SignUpPage2>{
final TextEditingController _PassWord =TextEditingController();
final TextEditingController _username =TextEditingController();
bool _isAccepted = false;
  @override
  Widget build(BuildContext context){
   return Scaffold(
    backgroundColor: Colors.white,
    body:SafeArea(
      child: SingleChildScrollView( 
    physics: const ClampingScrollPhysics(),
    child:Padding(padding:const EdgeInsetsGeometry.fromLTRB(15, 15, 15, 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding:EdgeInsetsGeometry.symmetric(horizontal: 15.0),//هاي عشان المسافات حولين الrow 
         child: Row(children: [
          Transform.translate(
      offset: const Offset(0, 45), // الرقم 15 هو مقدار النزول لتحت، زيده أو نقصه حسب حاجتك
      child: SvgPicture.asset(
        'assets/bookmark.svg',
        height: 75, // يفضل تعطي حجم عشان ما يختفي
      ),
      ),
         const Spacer(),
         Container(
              height: 45,
              width: 45,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
               color: Colors.black.withOpacity(0.2),
               spreadRadius:2,
               blurRadius:2,
               offset: Offset(0, 2),

              ),
            ], 
          ), 
          child:IconButton(
            icon:Icon(Icons.arrow_forward,
            color: Color(0xff631EB8),
            ),
            onPressed: () { 
          Navigator.pop(context);
            }
            ),
          )
         ],),
          ),
          SizedBox(height: 50,),//IM SIZEDBOX DELETE ME
        Padding(padding:const EdgeInsetsGeometry.symmetric(horizontal: 15.0),
        child:Align(alignment: Alignment.centerRight,child:  Text.rich(
          TextSpan(children:[
            TextSpan(
              text: " لنبدأ ",
              style: GoogleFonts.alexandria(
                fontWeight: FontWeight.w900,
                fontSize: 35,
              )
            ),
              TextSpan(
                text: "الحكاية",
                style: GoogleFonts.alexandria(
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  color: Color(0xff7D3BED),
                )
              )
          ]
          ),
         ),
        ),
        ),
        SizedBox(height: 15,),// IM SIXEDBOX DELETE ME
        Padding(padding:const EdgeInsetsGeometry.symmetric(horizontal:15.0),
        child: Align(alignment: Alignment.centerRight,
        child: Text(".""أنشئ حسابك وانغمس في الأجواء",
        style: GoogleFonts.alexandria(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Color(0xff475569)
        ),
        ),   
        ),
        ),
        SizedBox(height: 25,),//IM SIZEDBOX DELETE ME
        Container(
          child:SizedBox(
          width: 325,
          child: TextFormField(
            textAlign: TextAlign.right,
            controller:_username,
          decoration: InputDecoration(
          hintText: 'اسم المستخدم',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
          prefixIcon: Icon(Icons.alternate_email,color: Colors.grey,),
    
           // التنسيق الافتراضي للخط (Underline)
          enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
    
          // التنسيق عند الضغط على الحقل (Focus)
          focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 100, 100, 100), width: 2),
          ),
      ),
    ),
        ),
        ),
        SizedBox(height: 25,),//IM SIZEDBOX DELETE ME 
        Container(
          child:SizedBox(
          width: 325,
          child: TextFormField(
          controller:_PassWord,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
          hintText: 'كلمة المرور',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
          prefixIcon: Icon(Icons.lock_outline,color: Colors.grey,),

           // التنسيق الافتراضي للخط (Underline)
          enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          // التنسيق عند الضغط على الحقل (Focus)
          focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 100, 100, 100), width: 2),
          ),
      ),
    ),
        ),
        ),
        SizedBox(height: 35,),//IM SIZEDBOX DELETE ME
        Row(
          children: [
            const Spacer(),
            TextButton(onPressed: (){},
            child:Text(".""شروط الخدمة و سياسة الخصوصية"),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            ),
            Text("أوافق على"),
            Checkbox(value: _isAccepted, onChanged: (bool? newValue) {
               setState(() {
              _isAccepted = newValue ?? false; // تحديث الحالة عند الكبس
             });
            },
            ),
          ],
        ),
        SizedBox(height: 130,),//IM SIZEDBOX DELETE ME
        SizedBox(
          width: double.infinity,
          height: 65,
          child:ElevatedButton(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
          Icon(
          Icons.rocket_launch, // هاي الأيقونة بتعطيك شكل صاروخ "مقلع"
          color: Colors.white, // الأيقونة بيضا
          size: 24, 
        ),
        SizedBox(width: 15,),
          Text("إنشاء حساب",
          style: GoogleFonts.alexandria(
          color:Colors.white,
         ),
         ),
         
         ]),
        
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
        ),
        ),
        ),
        ],
      ),
    ),
    ),
    ),
   );

  }

}