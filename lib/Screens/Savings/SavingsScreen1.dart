import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/SavingScreen2.dart';

class SavingsScreen1 extends StatefulWidget {
  const SavingsScreen1({super.key});

  @override
  State<SavingsScreen1> createState() => _SavingsScreen1State();
}

class _SavingsScreen1State extends State<SavingsScreen1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 325.sp,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff60F248).withOpacity(0.23),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                ),
                                children: [
                                  TextSpan(
                                    text: GoVestText.Go,
                                    style: TextStyle(
                                      color: Color(0xff0EB51F),
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xff0EB51F),
                                    ),
                                  ),
                                  TextSpan(
                                      text: GoVestText.Savings2,
                                      style: TextStyle(
                                        color: Color(0xff3B5AFB),
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xff3B5AFB),
                                      ))
                                ]),
                          ),
                          Container(
                            height: 35.sp,
                            width: 35.sp,
                            decoration: BoxDecoration(
                                color: Color(0xff3B5AFB),
                                borderRadius: BorderRadius.circular(40)),
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                      Text(
                        GoVestText.Boldstep,
                        style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff979797),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xff979797)),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        children: [
                          Image.asset(GoVestAssets.BigBlackNaira),
                          Text(
                            GoVestText.Amount4,
                            style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              fontSize: 35,
                              color: Color(0xff000000),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xff000000),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100.sp,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(GoVestText.DashBoard,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff3B5AFB),
                                )),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context)=>SavingsScreen2())
                                );
                              },
                              child: Text(GoVestText.Transaction,
                                  style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff000000).withOpacity(0.25),
                                  )),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Container(
                        height: 1.sp,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(
                            color: Color(0xff000000).withOpacity(0.2)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
               padding:
                        const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 172.sp,
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
                                  height: 40.sp,
                                  width: 40.sp,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF).withOpacity(0.23),
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: Icon(
                                    Icons.lock,color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.sp,
                                ),
                                Text(GoVestText.GOBANK,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(GoVestText.LockFunds, 
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                               Text(GoVestText.Hashtagfourty,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(GoVestText.SixPercent,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),)
                              ],
                             )
                              ],
                            ),
                          ),
                        ),
                     Container(
                          height: 172.sp,
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
                                  height: 40.sp,
                                  width: 40.sp,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF).withOpacity(0.23),
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: Icon(
                                    Icons.lock,color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.sp,
                                ),
                                Text(GoVestText.Gowallet,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(GoVestText.LockFunds, 
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                               Text(GoVestText.Hashtagfourty,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(GoVestText.SixPercent,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),)
                              ],
                             )
                              ],
                            ),
                          ),
                        ),
                     
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 172.sp,
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
                                  height: 40.sp,
                                  width: 40.sp,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF).withOpacity(0.23),
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: Icon(
                                    Icons.lock,color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.sp,
                                ),
                                Text(GoVestText.GOLock,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(GoVestText.LockFunds, 
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                               Text(GoVestText.Hashtagfourty,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(GoVestText.SixPercent,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),)
                              ],
                             )
                              ],
                            ),
                          ),
                        ),
                     Container(
                          height: 172.sp,
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
                                  height: 40.sp,
                                  width: 40.sp,
                                  decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF).withOpacity(0.23),
                                    borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: Icon(
                                    Icons.lock,color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  height: 5.sp,
                                ),
                                Text(GoVestText.GoTarget,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(GoVestText.LockFunds, 
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),),
                                SizedBox(
                                  height: 10.sp,
                                ),
                               Text(GoVestText.Hashtagfourty,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xffFFFFFF)
                                ),),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(GoVestText.SixPercent,
                                 style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xffFFFFFF)
                                ),)
                              ],
                             )
                              ],
                            ),
                          ),
                        ),
                     
                      ],
                 ),
                 SizedBox(
                  height: 30.sp,
                 ),
                 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
