import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/AddBank.dart';
import 'package:govest_clone/Screens/Dashboard/DashboardScreen.dart';
import 'package:govest_clone/Screens/KYCSetup.dart';
import 'package:govest_clone/Screens/Login/Login.dart';
import 'package:govest_clone/Screens/Myprofile.dart';
import 'package:govest_clone/Screens/TransactionHistory.dart';

class InvestmentScreeen extends StatefulWidget {
  const InvestmentScreeen({super.key});

  @override
  State<InvestmentScreeen> createState() => _InvestmentScreeenState();
}

class _InvestmentScreeenState extends State<InvestmentScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>LoginScreen())
                    );
                  },
                  child: Image.asset(GoVestAssets.Cancel)),
                SizedBox(
                  height: 35.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          GoVestText.Hello2,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFFFFFF)),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Text(GoVestText.Ganni,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF)))
                      ],
                    ),
                    Image.asset(GoVestAssets.Person),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>DashboardScreen())
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        GoVestText.Go,
                        style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Text(
                        GoVestText.DashBoard,
                        style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>MyProfileScreen())
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset(GoVestAssets.Profile),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Text(GoVestText.ProfileText,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>TransactionHistoryScreen())
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset(GoVestAssets.Reciept),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Text(
                        GoVestText.TransactionHistoryText,
                        style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>AddBankScreen())
                    );
                  },
                  child: Row(
                    children: [
                      Image.asset(GoVestAssets.Card),
                      SizedBox(
                        width: 10.sp,
                      ),
                      Text(
                        GoVestText.Bank_Debit,
                        style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),
                      )
                    ],
                  ),
                ),
      
                SizedBox(
                  height: 30.sp,
                ),
      
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>KYCSetupScreen())
                    );
                  },
                  child: Row(
                    children: [
                     Image.asset(GoVestAssets.KYC),
                     SizedBox(
                      width: 10.sp,
                     ),
                     Text(GoVestText.SetupKyc, style:TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF),
                        ),)
                    ],
                  ),
                ),
      
                SizedBox(
                  height: 30.sp,
                ),
                Row(
                  children: [
                    Image.asset(GoVestAssets.Info),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(GoVestText.AboutGoVest , style:TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),),
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),
                 Row(
                  children: [
                    Image.asset(GoVestAssets.CustomerCare),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(GoVestText.CustomerCenterText,style:TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),),
                  ],
                 ),
            
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>LoginScreen())
                    );
                  },
                  child: Container(
                    height: 60.sp,
                    width: 149.sp,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(GoVestText.LogoutText,style:TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                        ),),
                        SizedBox(
                          width: 10.sp,
                        ),
                        Image.asset(GoVestAssets.Logout)
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
