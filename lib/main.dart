import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/first_intro.dart';

void main() {
  runApp(My_Intro_screen());
}

class My_Intro_screen extends StatefulWidget {
  const My_Intro_screen({Key? key}) : super(key: key);

  @override
  State<My_Intro_screen> createState() => _My_Intro_screenState();
}

class _My_Intro_screenState extends State<My_Intro_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        home: const First_Intro());
  }
}
