import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/sf_utils.dart';
import 'home_page.dart';

class Third_Intro extends StatefulWidget {
  const Third_Intro({Key? key}) : super(key: key);

  @override
  State<Third_Intro> createState() => _Third_IntroState();
}

class _Third_IntroState extends State<Third_Intro> {
  bool splashloggedin3 = false;
  Checksplash3() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    splashloggedin3 = perf.getBool(sfsplash3) ?? true;
    if (perf.getBool(sfsplash3) ?? false) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Home_page()));
    } else {
      perf.setBool(sfsplash3, true);
      Future.delayed(const Duration(seconds: 7), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Home_page()));
      });
    }
  }

  @override
  void initState() {
    super.initState();

    Checksplash3();
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
                  "assets/images/intr3.jpeg",
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
                  Container(
                    margin: const EdgeInsets.all(3),
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
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
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Home_page()));
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
