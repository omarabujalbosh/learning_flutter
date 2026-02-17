import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter/pages/login_as_adman_page.dart';
import 'login_page.dart';
import 'sign_up_page.dart';
class HomePage extends StatefulWidget{
HomePage({Key? key}): super(key:key);

@override
_HomePage  createState() =>_HomePage();
}
class _HomePage extends State<HomePage>{
@override
Widget build(BuildContext context){
  return Scaffold(
    body:SafeArea(
      child:Container(
     height: double.infinity,
     width: double.infinity,
     decoration: BoxDecoration(
      color: Colors.white,
     
     ), 
     child:Column(
      children: [
        const SizedBox(height: 56,),
        Image.asset(
          'assets/library.png',
          height: 250,
          width: 270,
          fit:BoxFit.contain,
        ),
        const SizedBox(height: 45,),
        Text("Welcome Back!",
        style: GoogleFonts.rubik( // هون بنادي الخط
                fontSize: 40,           // حجم الخط
                fontWeight: FontWeight.w800, // عشان يطلع خميل زي التصميم
                 color: Color(0xff3F3838),// لون النص
        ),
        ),
        const SizedBox(height: 13,),
        Text("                               Log in \n to access your personal sanctuary of books",
        style: GoogleFonts.rubik(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          color: Color(0xff656565)
        ),
        ),
        const SizedBox(height: 25,),
        SizedBox(
          width: 250,
          height: 50,
        child: ElevatedButton(onPressed: (){
         Navigator.push(
                context,
               MaterialPageRoute(builder:(context)=>LoginPage() )
               );
        },
        style:ElevatedButton.styleFrom(
          backgroundColor: Color(0xff514EB8) ,
          foregroundColor:Colors.white,
        ),
        child: Text("Login",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        ),
        ),
        ),
        SizedBox(height: 20,),
        SizedBox(
          width: 250,
          height: 50,
          child: OutlinedButton(onPressed: (){
             Navigator.push(
                context,
               MaterialPageRoute(builder:(context)=>SignUpPage() )
               );
          },
          style: OutlinedButton.styleFrom(
            side:BorderSide(color:Color(0xff514EB8) ,
            width: 3) ,
             foregroundColor:Color(0xff514EB8) ,
          ),
            child: Text("Sign Up",
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            ),
            
            ),
        ),
      const SizedBox(height: 28,),
      Text("___________  or  ___________",
      style: GoogleFonts.rubik(
        color: Color(0xff808080),
        fontSize: 15,
      ),
      ),
      const SizedBox(height: 11,),
      SizedBox(
        height: 30,
        child: ElevatedButton(onPressed: (){
         Navigator.push(
         context,
         MaterialPageRoute(builder: (context)=>LoginAsAdmanPage()),
         );

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff514EB8) ,
          foregroundColor:Colors.white,
        ),
        child:Text("sign up as Admin") ,
        ),
      )
      ],
      ),
    ),
    ),
     );
}
}