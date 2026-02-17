import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning_flutter/pages/main_page.dart';
import 'sign_up_page.dart';
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
        Image.asset(
          'assets/login_page.jpg',
          height: 300,
          width: 300,
          fit:BoxFit.contain,
        ),
        //SizedBox(height: 15,),
        Text('Login',
        style: GoogleFonts.rubik(
          color: Color(0xff3F3838),
          fontSize: 45,
          fontWeight: FontWeight.w800,
        ),
        ),
        const SizedBox(height: 30,),
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
          width: 200,
          height: 50,
          child: ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>MainPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff514EB8),
            foregroundColor:Colors.white,
          ),
          child: Text('Login',
          style:TextStyle(
            fontWeight: FontWeight.w800,
          ),
          ),
          ),
        ),
        const SizedBox(height: 10,),
        TextButton(onPressed: (){},
         child:Text('Forget Password?',
           style: GoogleFonts.rubik(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Colors.black,
           ),
           ),
        ),
        //const SizedBox(height: 5,),
        Text('or',
        style: GoogleFonts.rubik(
          fontWeight: FontWeight.w400,
          color: Color(0xff656565),
        ),
        ),
        const SizedBox(height: 10,),
        SizedBox(
          width: 150,
          height: 35,
          child:OutlinedButton(onPressed: () {
          Navigator.push(
                context,
               MaterialPageRoute(builder:(context)=>SignUpPage())
               );
          },
        child:Text('Sign Up'),
        style: OutlinedButton.styleFrom(
         side:BorderSide(color:Color(0xff514EB8) ,
            width: 3) ,
             foregroundColor:Color(0xff514EB8) ,
        ),
         ),
        ),
      ],
    )
    ),
   ),
   ),
 ); 
}
}