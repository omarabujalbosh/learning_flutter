import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_flutter/pages/main_page.dart';
import 'sign_up_page.dart';
//import 'package:flutter-svg';
class LoginPage extends StatefulWidget{
LoginPage({Key? key}): super(key:key);

@override
_LoginPage  createState() =>_LoginPage();
}
class _LoginPage extends State<LoginPage>{
final TextEditingController _username =TextEditingController();
final TextEditingController _PassWord =TextEditingController();
bool _showthepassword=true;
@override
Widget build(BuildContext context){
 return Scaffold(
   body: SafeArea(
    child: SingleChildScrollView( 
    physics: const ClampingScrollPhysics(),
    child:Container(
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child:Column(
      children: [
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
    )
    ),
   ),
   ),
 ); 
}
}