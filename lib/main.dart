import 'package:flutter/material.dart';
import 'pages/Welcome_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xff631EB8),
  ),
),

      home: HomePage(),      
    ));
}

