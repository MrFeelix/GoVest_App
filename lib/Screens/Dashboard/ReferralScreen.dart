import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                              text: GoVestText.Go,
                              style: TextStyle(color: Color(0xff2A52E2))),
                          TextSpan(
                              text: GoVestText.Vest,
                              style: TextStyle(color: Color(0xff0EB51F))),
                        ],
                      ),
                    ),
                    Image.asset(GoVestAssets.Person2)
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Container(
                  height: 226.sp,
                  width: 366.sp,
                  decoration: BoxDecoration(
                      color: Color(0xff2A52E2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GoVestText.Percent,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontSize: 48,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF)),
                                ),
                                Text(
                                  GoVestText.Commi,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF)),
                                ),
                                Image.asset(GoVestAssets.Yellowline)
                              ],
                            ),
                            Image.asset(GoVestAssets.CommImage)
                          ],
                        ),
                        SizedBox(
                          width: 320,
                          child: Text(GoVestText.Earn,
                              style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFFFFF))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.sp,
                ),
                Text(
                  GoVestText.CopyCode,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  height: 112.sp,
                  width: 357.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff60F248).withOpacity(0.23),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 30.sp,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              color: Color(0xff000000),
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: GoVestText.Go,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                  text: GoVestText.ReferralCode2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ))
                            ]),
                      ),
                      Container(
                          height: 112.sp,
                          width: 85.sp,
                          decoration: BoxDecoration(
                            color: Color(0xff3B5AFB),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30.sp,
                              ),
                              Image.asset(GoVestAssets.CopyImage),
                              SizedBox(
                                height: 20.sp,
                              ),
                              Text(
                                GoVestText.TaptoCopy,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Center(
                  child: Container(
                    height: 145.sp,
                    width: 288.sp,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xff3B5AFB).withOpacity(0.5), width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                GoVestText.SignUps,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                ),
                              ),
                              Text(
                                GoVestText.SignUpswithTrading,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                GoVestText.Ten,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                GoVestText.Seven,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.sp,
                          ),
                          Container(
                            height: 1.sp,
                            width: 379,
                            decoration: BoxDecoration(color: Color(0xffDBDBDB)),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                GoVestText.TotalBonusEarned,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                ),
                              ),
                              Text(
                                GoVestText.BonusperReferral,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                GoVestAssets.BlackNaira,
                                color: Color(0xff000000),
                              ),
                              Text(
                                GoVestText.Amount2,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Image.asset(GoVestAssets.BlackNaira),
                                  Text(
                                    GoVestText.Amount3,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Center(
                  child: Container(
                    height: 100.sp,
                    width: 288.sp,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color(0xff3B5AFB).withOpacity(0.5), width: 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.sp,
                        ),
                        Image.asset(GoVestAssets.Upload),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          GoVestText.ShareLink,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
