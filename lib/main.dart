import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 0, 18, 154),
  ),
),

      home: HomePage(),      
    ));
}

