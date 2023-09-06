import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/Color_path.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Dashboard/ReferralScreen.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage2.dart';
import 'package:govest_clone/Screens/Savings/SavingsScreen1.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // String imagepath = GoVestAssets.Stock;
  // String text = GoVestText.Investment;
  // String extra = GoVestText.Bonus;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 330.sp,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xff60F248).withOpacity(0.23),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        children: [
                          Image.asset(GoVestAssets.Person2),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Text(
                            GoVestText.Hello2,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            GoVestText.Ganni,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 19,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 120.sp,
                          ),
                          Icon(
                            Icons.settings,
                            color: Color(0xff3B5AFB),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CardView(
                                wallettype: GoVestText.GOWALLET,
                                code: GoVestText.Code,
                                balance: GoVestText.Balance,
                                name: GoVestText.Ganni,
                                bankname: GoVestText.Wema,
                                imagepath: GoVestAssets.Cross),
                            SizedBox(
                              width: 15.sp,
                            ),
                            CardView(
                                wallettype: GoVestText.GOWALLET,
                                code: GoVestText.Code,
                                balance: GoVestText.Balance,
                                name: GoVestText.Ganni,
                                bankname: GoVestText.Wema,
                                imagepath: GoVestAssets.Cross),
                            SizedBox(
                              width: 15.sp,
                            ),
                            CardView(
                                wallettype: GoVestText.GOWALLET,
                                code: GoVestText.Code,
                                balance: GoVestText.Balance,
                                name: GoVestText.Ganni,
                                bankname: GoVestText.Wema,
                                imagepath: GoVestAssets.Cross)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          
                          MaterialPageRoute(builder: (BuildContext context)=>InvestmentPackage2())
                        );
                      },
                      child: Container(
                        height: 151.sp,
                        width: 165.sp,
                        decoration: BoxDecoration(
                            color: Color(0xff0EB51F),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset(GoVestAssets.Stock),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                GoVestText.Investment,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                GoVestText.Bonus,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 5.sp,
                                      width: 25.sp,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>SavingsScreen1())
                        );
                      },
                      child: Container(
                        height: 151.sp,
                        width: 165.sp,
                        decoration: BoxDecoration(
                            color: Color(0xff3B5AFB),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Image.asset(GoVestAssets.Payment),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                GoVestText.Savings,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                GoVestText.Bonus,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(
                                height: 10.sp,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 5.sp,
                                      width: 25.sp,
                                      decoration: BoxDecoration(
                                          color: Color(0xffFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      GoVestText.Refer_Earn,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979797),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      height: 130.sp,
                      width: 328.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff60F248).withOpacity(0.23),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                GoVestText.Commission,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (BuildContext context)=>ReferralScreen())
                                    );
                                  },
                                  child: Text(
                                    GoVestText.ReferNow,
                                    style: TextStyle(
                                        fontFamily: GoVestAssets.Type,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff0EB51F)),
                                  ),
                                ),
                                Image.asset(GoVestAssets.Readin),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GoVestText.Whatsup,
                          style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff979797),
                          ),
                        ),
                        Text(
                          GoVestText.SeeMore,
                          style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Container(
                      height: 70.sp,
                      width: 366.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3B5AFB),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 20, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40.sp,
                                  width: 40.sp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: Color(0xffFFFFFF)),
                                  child: Icon(
                                    Icons.arrow_upward,
                                    color: Color(0xff3B5AFB),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          GoVestText.WalletWithdraw,
                                          style: TextStyle(
                                            fontFamily: GoVestAssets.Type,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                        Text(
                                          GoVestText.Date,
                                          style: TextStyle(
                                            fontFamily: GoVestAssets.Type,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Image.asset(GoVestAssets.Naira),
                                    Text(
                                      GoVestText.Amount,
                                      style: TextStyle(
                                        fontFamily: GoVestAssets.Type,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
           SizedBox(
            height: 40,
           )
            ],
          ),
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.wallettype,
    required this.code,
    required this.balance,
    required this.name,
    required this.bankname,
    required this.imagepath,
  });

  final String wallettype;
  final String code;
  final String balance;
  final String name;
  final String bankname;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205.sp,
      width: 333.sp,
      decoration: BoxDecoration(
        color: Color(0xff2A52E2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.sp,
                ),
                Text(
                  wallettype,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  code,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  balance,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFFFFFF),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 205.sp,
              width: 46.sp,
              decoration: BoxDecoration(
                color: Color(0xff0C35C6).withOpacity(0.6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.sp,
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      bankname,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF).withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 75.sp,
                  ),
                  Image.asset(imagepath)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
