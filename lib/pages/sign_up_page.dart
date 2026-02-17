import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
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
    body:SafeArea(
     child:SingleChildScrollView(
     child: Container(
        width: MediaQuery.of(context).size.width,
        //decoration: InputDecoration(),
        color: Colors.white,
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Text('Sign Up',
            style: GoogleFonts.rubik(
              color: Color(0xff3F3838),
              fontWeight: FontWeight.w900,
              fontSize: 50,
            ),
          ),
          const SizedBox(height: 10,),
          GestureDetector(
            onTap:_pickImage,
            child: CircleAvatar(
              radius: 90,
              backgroundColor: Color(0xffEBEBEB),

              backgroundImage: _profileImge!=null?
              FileImage(_profileImge!):null,
              
              child: _profileImge == null 
            ? Icon(Icons.camera_alt, size: 35, color: Colors.grey) // أيقونة الكاميرا لو فاضي
            : null, // لو في صورة، ما بدنا أيقونة فوقها
            
            ),
          ),
          Text('Choose your picture',
            style: GoogleFonts.rubik(
              color: Color(0xff656565),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
          width: 280,
          height: 55,
          child:TextFormField(
          controller: _Email,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Email',
            filled:true,
            fillColor: Color(0xffEBEBEB),
            border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(50)
            ),
          ),
          
        )
        ),
        SizedBox(height: 20,),
        SizedBox(
          width: 280,
          height: 55,
          child:TextFormField(
          controller: _username,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'username',
            filled:true,
            fillColor: Color(0xffEBEBEB),
            border:OutlineInputBorder(
             borderRadius: BorderRadius.circular(50)
            ),
          ),
          
        )
        ),
        const SizedBox(height: 20,),
        SizedBox(
          width: 280,
          height: 55,
          child: TextFormField(
            controller: _PassWord,
            obscureText: _showthepassword,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Password',
              filled:true,
              fillColor: Color(0xffEBEBEB),
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(50),
              ),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  _showthepassword=!_showthepassword;
                });
              },
               icon:Icon(
                 _showthepassword?Icons.visibility_off:Icons.visibility,
                 color: Color(0xff514EB8),
               ),
               ),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          width: 280,
          height: 55,
          child: TextFormField(
            controller: _PassWord2,
            obscureText: _showthepassword2,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Password',
              filled:true,
              fillColor: Color(0xffEBEBEB),
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(50),
              ),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  _showthepassword2=!_showthepassword2;
                });
              },
               icon:Icon(
                 _showthepassword2?Icons.visibility_off:Icons.visibility,
                 color: Color(0xff514EB8),
               ),
               ),
            ),
          ),
        ),
        const SizedBox(height: 25,),
        SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(onPressed: (){
           
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff514EB8),
            foregroundColor:Colors.white,
          ),
          child: Text('Sign Up',
          style:TextStyle(
            fontWeight: FontWeight.w800,
          ),
          ),
          ),
        ),
        const SizedBox(height: 50,)
        ],
      ),
     ),
    ),
    ),
   ); 
  }

}