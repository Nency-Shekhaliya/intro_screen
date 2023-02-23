import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome..",
              style: TextStyle(
                  color: Colors.blueAccent.shade700,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
