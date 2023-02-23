import 'package:flutter/material.dart';
import 'package:intro_screen/views/screens/second_intro_.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/sf_utils.dart';
import 'home_page.dart';

class First_Intro extends StatefulWidget {
  const First_Intro({Key? key}) : super(key: key);

  @override
  State<First_Intro> createState() => _First_IntroState();
}

class _First_IntroState extends State<First_Intro> {
  bool splashloggedin1 = false;
  Checksplash1() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    splashloggedin1 = perf.getBool(sfsplash1) ?? true;
    if (perf.getBool(sfsplash1) ?? false) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Second_intro()));
    } else {
      perf.setBool(sfsplash1, true);
      Future.delayed(const Duration(seconds: 7), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Second_intro()));
      });
    }
  }

  @override
  void initState() {
    super.initState();

    Checksplash1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  "assets/images/intr1.jpeg",
                  scale: 0.5,
                ),
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                  ),
                  Container(
                    height: 7,
                    margin: const EdgeInsets.all(3),
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  ),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Home_page()));
                    },
                    child: const Text("Skip >>"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const Second_intro()));
                    },
                    child: const Text("Next >>"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
