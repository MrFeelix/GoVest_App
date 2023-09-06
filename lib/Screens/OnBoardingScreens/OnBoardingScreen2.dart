import 'package:flutter/material.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/OnBoardingScreens/OnBoardingScreen3.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left:30.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context )=>OnBoardingScreen3())
                );
              },
              child: Container(
                height: 55,
                width: 180,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFFF),
                  borderRadius: BorderRadius.circular(118)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(GoVestText.Next,
                    style: TextStyle(color: Color(0xff3B5AFB),fontSize: 16, fontWeight: FontWeight.w700),),
                 Image.asset(GoVestAssets.RightArrow)
                 
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}