import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:learning_flutter/pages/main_page2.dart';
import 'profile_page.dart';
import 'sarch_page.dart';
class MainPage extends StatefulWidget{
  MainPage({Key? key}):super(key:key);
  @override
  _MainPage createState()=> _MainPage();
}
class _MainPage extends State<MainPage>{
  int _courrentIndxe=1;
  final List<Widget> _Pages=[
  SearchPage(),
   MainPage2(),
   ProfilePage(),
  ];
  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.white,
      body:_Pages[_courrentIndxe] ,
      bottomNavigationBar: Padding(
  padding: const EdgeInsets.only(bottom: 35, left: 20, right: 20),
  child: Container(
    // هون بنعطي الحواف المدورة واللون للكونتينر نفسه مش بقص الشريط
    decoration: BoxDecoration(
      color: Colors.black, // لون البار الأساسي
      borderRadius: BorderRadius.circular(30),
    ),
    child: CurvedNavigationBar(
      height: 50,
      index: _courrentIndxe,
      items: const [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.person, color: Colors.white),
      ],
      onTap: (Index) {
        setState(() {
          _courrentIndxe = Index;
        });
      },
      color: Colors.transparent, // خلي لون المكتبة شفاف عشان يبين لون الكونتينر الأسود
      buttonBackgroundColor:Color(0xff514EB8), // لون الدائرة الطايرة
      backgroundColor: Colors.transparent, // أهم وحدة! عشان الدائرة تطلع فوق بياض الصفحة
      animationDuration: const Duration(milliseconds: 300),
    ),
  ),
),
    );
  }
}