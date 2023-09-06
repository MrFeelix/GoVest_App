import 'package:flutter/material.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/OnBoardingScreens/OnBoardingScreen2.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left:30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context )=>OnBoardingScreen2())
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 63,
                  width: 354,
                  decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(118)
                  ),
                  child: Center(
                    child: Text(GoVestText.GetStarted,
                    style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w700),),
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