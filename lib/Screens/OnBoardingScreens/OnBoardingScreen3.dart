import 'package:flutter/material.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/CreateAccount/CreateaccountScreen.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({super.key});

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>CreateaccountScreen())
                );
              },
              child: Container(
              height: 63,
                   width: 354,
                   decoration: BoxDecoration(
                     color: Color(0xff3B5AFB),
                     borderRadius: BorderRadius.circular(118)
                   ),
                   child: Center(
                     child: Text(GoVestText.Create,
                     style: TextStyle(color: Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w700),),
                   ),
                 ),
            )
       ] ),
      ),
    );
  }
}