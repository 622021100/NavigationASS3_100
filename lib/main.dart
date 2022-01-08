import 'package:flutter/material.dart';
import 'package:it_routing/pages/firstpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.purple[900],
        textTheme: GoogleFonts.promptTextTheme(),
      ),
      home: const FirstPage(title: 'หน้าแรก'),
    );
  }
}