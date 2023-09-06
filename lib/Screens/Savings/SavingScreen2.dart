import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/NewSavings.dart';
import 'package:govest_clone/Screens/Savings/SavingsScreen1.dart';

class SavingsScreen2 extends StatefulWidget {
  const SavingsScreen2({super.key});

  @override
  State<SavingsScreen2> createState() => _SavingsScreen2State();
}

class _SavingsScreen2State extends State<SavingsScreen2> {
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
                                      ),)
                                ],),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context)=>NewSavings())
                              );
                            },
                            child: Container(
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
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context)=>SavingsScreen1())
                                  );
                              },
                              child: Text(GoVestText.DashBoard,
                                  style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff000000).withOpacity(0.25),
                                  )),
                            ),
                            Text(GoVestText.Transaction,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff3B5AFB),
                                ))
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
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              Container(
                height: 232.sp,
                width: 344.sp,
                decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        GoVestText.GoTargetSavings,
                        style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xffFFFFFF).withOpacity(0.4),
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GoVestText.SchoolFee,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xffFFFFFF),
                                decoration: TextDecoration.underline),
                          ),
                          Container(
                            height: 35.sp,
                            width: 35.sp,
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                GoVestText.ThirtyFive,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Color(0xff3B5AFB),
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100.sp,
                            width: 135.sp,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    GoVestText.Target,
                                    style: TextStyle(
                                        fontFamily: GoVestAssets.Type,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color(0xff3B5AFB),
                                        decoration: TextDecoration.underline),
                                  ),
                                  SizedBox(
                                    height: 30.sp,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(GoVestAssets.BlueNaira),
                                      Text(
                                        GoVestText.Amount4,
                                        style: TextStyle(
                                            fontFamily: GoVestAssets.Type,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff3B5AFB),
                                            decoration: TextDecoration.underline),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        Container(
                            height: 100.sp,
                            width: 135.sp,
                            decoration: BoxDecoration(
                                color: Color(0xffFFFFFF).withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    GoVestText.Saved,
                                    style: TextStyle(
                                        fontFamily: GoVestAssets.Type,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        color: Color(0xff3B5AFB),
                                        decoration: TextDecoration.underline),
                                  ),
                                  SizedBox(
                                    height: 30.sp,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(GoVestAssets.BlueNaira),
                                      Text(
                                        GoVestText.Amount13,
                                        style: TextStyle(
                                            fontFamily: GoVestAssets.Type,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff3B5AFB),
                                            decoration: TextDecoration.underline),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
          Container(
              height: 232.sp,
              width: 344.sp,
              decoration: BoxDecoration(
                  color: Color(0xff000000),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      GoVestText.GoTargetSavings,
                      style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xffFFFFFF).withOpacity(0.4),
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GoVestText.Emergency,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              decoration: TextDecoration.underline),
                        ),
                        Container(
                          height: 35.sp,
                          width: 35.sp,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              GoVestText.Twenty,
                              style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xff3B5AFB),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100.sp,
                          width: 135.sp,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GoVestText.Target,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.underline),
                                ),
                                SizedBox(
                                  height: 30.sp,
                                ),
                                Row(
                                  children: [
                                    Image.asset(GoVestAssets.BlueNaira, color: Color(0xff000000),),
                                    Text(
                                      GoVestText.Amount4,
                                      style: TextStyle(
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Color(0xff000000),
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      Container(
                          height: 100.sp,
                          width: 135.sp,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GoVestText.Saved,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xffFFFFFF),
                                      decoration: TextDecoration.underline),
                                ),
                                SizedBox(
                                  height: 30.sp,
                                ),
                                Row(
                                  children: [
                                    Image.asset(GoVestAssets.BlueNaira, color: Color(0xffFFFFFF),),
                                    Text(
                                      GoVestText.Amount13,
                                      style: TextStyle(
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      
                      ],
                    )
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 20.sp,
          ),
          Container(
              height: 232.sp,
              width: 344.sp,
              decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          GoVestText.GoTargetSavings,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffFFFFFF).withOpacity(0.4),
                              decoration: TextDecoration.underline),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                     Icon( Icons.lock,color: Color(0xffFFFFFF).withOpacity(0.33),size: 20, ),
                      ],
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GoVestText.TrustFund,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                              decoration: TextDecoration.underline),
                        ),
                        Container(
                          height: 35.sp,
                          width: 35.sp,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              GoVestText.Fourty,
                              style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                  color: Color(0xff3B5AFB),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 100.sp,
                          width: 135.sp,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GoVestText.Target,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.underline),
                                ),
                                SizedBox(
                                  height: 30.sp,
                                ),
                                Row(
                                  children: [
                                    Image.asset(GoVestAssets.BlueNaira, color: Color(0xff000000),),
                                    Text(
                                      GoVestText.Amount4,
                                      style: TextStyle(
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Color(0xff000000),
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      Container(
                          height: 100.sp,
                          width: 135.sp,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF).withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GoVestText.Saved,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Color(0xffFFFFFF),
                                      decoration: TextDecoration.underline),
                                ),
                                SizedBox(
                                  height: 30.sp,
                                ),
                                Row(
                                  children: [
                                    Image.asset(GoVestAssets.BlueNaira, color: Color(0xffFFFFFF),),
                                    Text(
                                      GoVestText.Amount13,
                                      style: TextStyle(
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          decoration: TextDecoration.underline),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      
                      ],
                    )
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
