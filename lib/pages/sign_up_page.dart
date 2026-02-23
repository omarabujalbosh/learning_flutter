import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class SignUpPage extends StatefulWidget{
SignUpPage({Key? key}):super(key:key);

@override
_SignUpPage createState()=>_SignUpPage();
}

class _SignUpPage extends State<SignUpPage>{
  File? _profileImge;

  Future<void> _pickImage() async {
  final ImagePicker picker = ImagePicker();
  // بنطلب منه يروح يجيب صورة من المعرض (Gallery)
  final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    setState(() {
      // بنحول الـ XFile لـ File عادي عشان فلاتر يفهمه
      _profileImge = File(pickedFile.path); 
    });
  }
}
final TextEditingController _Email =TextEditingController();
final TextEditingController _username =TextEditingController();
final TextEditingController _PassWord =TextEditingController();
final TextEditingController _PassWord2 =TextEditingController();
bool _showthepassword2=false;
bool _showthepassword=false;
  @override
  Widget build(BuildContext context){
   return Scaffold(
    backgroundColor: Colors.white,
    body:SafeArea(
      child: SingleChildScrollView( 
    physics: const ClampingScrollPhysics(),
     child: Column(
      children: [
        SizedBox(height: 15,),
        Row(
          children: [
            SizedBox(width: 300,),
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
          ],
        ),
        SizedBox(height: 45,),
        Text(
          'انضمّ الى عالمنا ',
          style: GoogleFonts.alexandria(
           fontSize: 40,
           fontWeight: FontWeight.w900,
           
          ),
        ),
        SizedBox(height:50,),
        SizedBox(
        width: 350,
        height: 60,
        child:OutlinedButton(onPressed: (){},
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: const Color.fromARGB(153, 197, 194, 194),
            //width: 2.0,
          ),
        ),
        child:Row(
          children: [
            SizedBox(width: 25,),
            Icon(
              FontAwesomeIcons.google,
              color: Colors.black,
              size: 24,
            ),
            SizedBox(width: 10,),
            Text('Google ',
            style: GoogleFonts.alexandria(
             color: Colors.black,
             fontSize: 20,
             fontWeight: FontWeight.w600,
            ),
            ),
            Text('متابعة باستخدام',
            style: GoogleFonts.alexandria(
             color: Colors.black,
             fontSize: 20,
             fontWeight: FontWeight.w600,
            ),
            ),
          ],
        ),
        ),
        ),
        SizedBox(height: 20,),
        SizedBox(
        width: 350,
        height: 60,
        child:OutlinedButton(onPressed: (){},
         style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: const Color.fromARGB(153, 197, 194, 194),
            //width: 2.0,
          ),
        ),
        child:Row(
          children: [
            SizedBox(width: 25,),
            Icon(
              FontAwesomeIcons.apple,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(width: 10,),
            Text('Apple ',
            style: GoogleFonts.alexandria(
             color: Colors.black,
             fontSize: 20,
             fontWeight: FontWeight.w600,
            ),
            ),
            Text('متابعة باستخدام',
            style: GoogleFonts.alexandria(
             color: Colors.black,
             fontSize: 20,
             fontWeight: FontWeight.w600,
            ),
            ),
          ],
        ),
        ),
        ),
        SizedBox(height: 30,),
        Row(
          children: [
             Expanded(child: Divider(thickness: 1, endIndent: 10,indent:20)), // الخط الأول
             Text("أو",style: TextStyle(color: Colors.grey,fontSize: 17),),                                           // الكلمة بالمنتصف
             Expanded(child:Divider(thickness: 1, indent: 10,endIndent: 20,)),    // الخط الثاني
            ],
         ),
        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(width: 240,),
            Text('البريد الالكتروني',style: GoogleFonts.alexandria(
              fontWeight: FontWeight.w500,
              color:  Color.fromARGB(255, 124, 123, 123),
            ),)
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 325,
          child: TextFormField(
          textAlign: TextAlign.right, // ليكون النص داخل الحقل من اليمين للشمال
          decoration: InputDecoration(
          hintText: 'you@example.com',
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
    
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
        SizedBox(height: 70,),
       SizedBox(
        width: 300,
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff631EB8),
          ),
        onPressed: () {  },
        child: Text('متابعة',
        style: GoogleFonts.alexandria(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.w500,
        ),
        ),
        ),
       ),
       SizedBox(height: 15,),
       Row(
        children: [
          SizedBox(width: 35,),
          TextButton(onPressed: (){},
          style:TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text('شروط الخدمة و سياسة الخصوصية ',
          style: GoogleFonts.alexandria(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          )),
       Text('بمتابعتك، أنت توافق على',
       style:GoogleFonts.alexandria(
        fontSize: 10,
        fontWeight: FontWeight.w300,
       ),
       ),
        ],
       ),
      ],
     ),
    ),
    ),
   ); 
  }

}