import 'package:flutter/material.dart';
import 'package:intro_screen/utils/sf_utils.dart';
import 'package:intro_screen/views/screens/home_page.dart';
import 'package:intro_screen/views/screens/third_intro.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Second_intro extends StatefulWidget {
  const Second_intro({Key? key}) : super(key: key);

  @override
  State<Second_intro> createState() => _Second_introState();
}

class _Second_introState extends State<Second_intro> {
  bool splashloggedin2 = false;
  Checksplash2() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    splashloggedin2 = perf.getBool(sfsplash2) ?? true;
    if (perf.getBool(sfsplash2) ?? false) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Third_Intro()));
    } else {
      perf.setBool(sfsplash2, true);
      Future.delayed(const Duration(seconds: 7), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Third_Intro()));
      });
    }
  }

  @override
  void initState() {
    super.initState();

    Checksplash2();
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
                  "assets/images/intr2.png",
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
                      color: Colors.blueAccent,
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
                          builder: (context) => const Third_Intro()));
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
