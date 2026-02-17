import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MainPage2 extends StatefulWidget{
  MainPage2({Key? key}):super(key:key);
  @override
  _MainPage2 createState()=> _MainPage2();
}
class _MainPage2 extends State<MainPage2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:SingleChildScrollView(
        child:Container(
          width: MediaQuery.of(context).size.width,
         color: Colors.white,
         child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              children: [
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text('Good',
                   style:GoogleFonts.rubik(
                   fontSize: 15,
                   color: const Color.fromARGB(255, 77, 43, 170),
                   fontWeight: FontWeight.w500,
                   ),
                  ),
                  Text('Afternoon',
                  style: GoogleFonts.rubik(
                   fontSize: 15,
                   color: const Color.fromARGB(255, 77, 43, 170),
                   fontWeight: FontWeight.w500,
                  ),
                  ),
                  SizedBox(
              
            child: Align(
              alignment: Alignment.centerLeft,
            child:Text('Omar Abo Jalbosh',
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                  ),
            ),
            ),
                  ],
                ),
                SizedBox(width:20,),
                Image.asset(
                  'assets/main_page.png',
                  height: 100,
                  
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('New Arrivals',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 90,),
                TextButton(onPressed: (){},
                 child: Row(
                  children: [
                   Text('View All',
                   style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w800,
                   ),
                ),
                   SizedBox(width: 8,),
                   Icon(Icons.arrow_forward,size: 18,fontWeight: FontWeight.w800,),
                  ],
                 ),
                  ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('New Novels',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 90,),
                TextButton(onPressed: (){},
                 child: Row(
                  children: [
                   Text('View All',
                   style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w800,
                   ),
                ),
                   SizedBox(width: 8,),
                   Icon(Icons.arrow_forward,size: 18,fontWeight: FontWeight.w800,),
                  ],
                 ),
                  ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('New Arrivals',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 90,),
                TextButton(onPressed: (){},
                 child: Row(
                  children: [
                   Text('View All',
                   style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w800,
                   ),
                ),
                   SizedBox(width: 8,),
                   Icon(Icons.arrow_forward,size: 18,fontWeight: FontWeight.w800,),
                  ],
                 ),
                  ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('New Arrivals',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 90,),
                TextButton(onPressed: (){},
                 child: Row(
                  children: [
                   Text('View All',
                   style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w800,
                   ),
                ),
                   SizedBox(width: 8,),
                   Icon(Icons.arrow_forward,size: 18,fontWeight: FontWeight.w800,),
                  ],
                 ),
                  ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('New Arrivals',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 90,),
                TextButton(onPressed: (){},
                 child: Row(
                  children: [
                   Text('View All',
                   style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w800,
                   ),
                ),
                   SizedBox(width: 8,),
                   Icon(Icons.arrow_forward,size: 18,fontWeight: FontWeight.w800,),
                  ],
                 ),
                  ),
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('New Arrivals',
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
                ),
                SizedBox(width: 90,),
                TextButton(onPressed: (){},
                 child: Row(
                  children: [
                   Text('View All',
                   style: GoogleFonts.rubik(
                      fontWeight: FontWeight.w800,
                   ),
                ),
                   SizedBox(width: 8,),
                   Icon(Icons.arrow_forward,size: 18,fontWeight: FontWeight.w800,),
                  ],
                 ),
                  ),
              ],
            ),
          SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),
                 SizedBox(width: 100,),
                 Text('omar'),

                ],
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