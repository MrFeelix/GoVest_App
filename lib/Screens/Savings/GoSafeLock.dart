import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/NewSavings.dart';
import 'package:govest_clone/Screens/Savings/SafeLockDayTen.dart';

class GoSafeLockScreen extends StatefulWidget {
  const GoSafeLockScreen({super.key});

  @override
  State<GoSafeLockScreen> createState() => _GoSafeLockScreenState();
}

class _GoSafeLockScreenState extends State<GoSafeLockScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => NewSavings()));
                  },
                  child: Image.asset(
                    GoVestAssets.Cancel,
                    color: Color(0xff3B5AFB),
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Row(
                  children: [
                    Container(
                      height: 35.sp,
                      width: 35.sp,
                      decoration: BoxDecoration(
                          color: Color(0xff3B5AFB).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.lock,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Text(
                      GoVestText.CreateGOSafeLock,
                      style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.sp,
                ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(GoVestText.DummyText2,
                     style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff000000),
                              ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context)=>SafeLockDayTenScreen())
                      );
                    },
                    child: DaySpanBox(text1: GoVestText.Ten_Thirty, text2: GoVestText.LockFunds, text3: GoVestText.UptoSix)),
               DaySpanBox2(text1: GoVestText.Thirty_Sixty, text2: GoVestText.LockFunds, text3: GoVestText.UptoSix),
               
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DaySpanBox2(text1: GoVestText.Ninty_OneTwenty, text2: GoVestText.LockFunds, text3: GoVestText.UptoSix),
                   DaySpanBox(text1: GoVestText.Sixty_Ninty, text2: GoVestText.LockFunds, text3: GoVestText.UptoSix),
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DaySpanBox(text1: GoVestText.Ten_Thirty, text2: GoVestText.LockFunds, text3: GoVestText.UptoSix),
                 DaySpanBox2(text1: GoVestText.Ten_Thirty, text2: GoVestText.LockFunds, text3: GoVestText.UptoSix)
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DaySpanBox2 extends StatelessWidget {
  const DaySpanBox2({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
                 height: 182.sp,
                 width: 170.sp,
                 decoration: BoxDecoration(
                   color: Color(0xff3B5AFB),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         height: 30.sp,
                         width: 30.sp,
                         decoration: BoxDecoration(
                           color: Color(0xffFFFFFF).withOpacity(0.23),
                           borderRadius: BorderRadius.circular(40)
                         ),
                         child: Icon(
                           Icons.lock,color: Color(0xffFFFFFF),size: 20,
                         ),
                       ),
                       SizedBox(
                         height: 5.sp,
                       ),
                       Text(text1,
                        style: TextStyle(
                         fontFamily: GoVestAssets.Type,
                         fontWeight: FontWeight.w700,
                         fontSize: 18,
                         color: Color(0xffFFFFFF)
                       ),),
                       SizedBox(
                         height: 10.sp,
                       ),
                       Text(text2, 
                        style: TextStyle(
                         fontFamily: GoVestAssets.Type,
                         fontWeight: FontWeight.w400,
                         fontSize: 14,
                         color: Color(0xffFFFFFF)
                       ),),
                       SizedBox(
                         height: 10.sp,
                       ),
                    Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       SizedBox(
                         width: 70,
                         child: Text(text3,
                          style: TextStyle(
                           fontFamily: GoVestAssets.Type,
                           fontWeight: FontWeight.w700,
                           fontSize: 12,
                           color: Color(0xffFFFFFF)
                         ),),
                       )
                     ],
                    )
                     ],
                   ),
                 ),
               );
  }
}

class DaySpanBox extends StatelessWidget {
  const DaySpanBox({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 182.sp,
                  width: 170.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff0EB51F),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30.sp,
                          width: 30.sp,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF).withOpacity(0.23),
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Icon(
                            Icons.lock,color: Color(0xffFFFFFF),size: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Text(text1,
                         style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xffFFFFFF)
                        ),),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(text2, 
                         style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffFFFFFF)
                        ),),
                        SizedBox(
                          height: 5.sp,
                        ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 70,
                          child: Text(text3,
                           style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Color(0xffFFFFFF)
                          ),),
                        )
                      ],
                     )
                      ],
                    ),
                  ),
                );
  }
}
