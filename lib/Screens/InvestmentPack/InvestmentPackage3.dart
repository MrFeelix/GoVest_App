import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/InvestmentPack/BuyInvestment.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage2.dart';

class InvestmentPackage3 extends StatefulWidget {
  const InvestmentPackage3({super.key});

  @override
  State<InvestmentPackage3> createState() => _InvestmentPackage3State();
}

class _InvestmentPackage3State extends State<InvestmentPackage3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 375.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(GoVestAssets.CornField),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color(0xff2A52E2).withOpacity(0.65), BlendMode.srcOver),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25, top: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context)=>InvestmentPackage2())
                          );
                        },
                        child: Image.asset(GoVestAssets.Backarrow)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.sp,
                          ),
                          Row(
                            children: [
                              Text(
                                GoVestText.Ongoing,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                    color: Color(0xff60F248)),
                              ),
                              SizedBox(
                                width: 5.sp,
                              ),
                              Container(
                                height: 13.sp,
                                width: 15.0,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(55)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            GoVestText.CashewInvest,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFFFFFF)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Center(
                        child: Container(
                          height: 1.sp,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF).withOpacity(0.6)),
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        GoVestText.ByAgro,
                        style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Container(
                        height: 25.sp,
                        width: 86.sp,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(50)),
                        child: Center(
                            child: Text(
                          GoVestText.VERIFIEDOPPURTUNITY,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontSize: 8,
                              fontWeight: FontWeight.w900,
                              color: Color(0xff3B5AFB)),
                        )),
                      ),
                      SizedBox(
                        height: 60.sp,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                GoVestText.Avaliable,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    color: Color(0xffFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                GoVestText.Amount10,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Color(0xffFFFFFF)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(GoVestText.Unitsleft,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xffFFFFFF))),
                              Text(
                                GoVestText.Perunit,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    color: Color(0xffFFFFFF),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 10, top: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      GoVestText.AboutthisInvestment,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text(
                      GoVestText.DummyText,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xff000000).withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.height / 1.2,
                      decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.4),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GreenBox(
                                text1: GoVestText.ExpectedReturn,
                                text2: GoVestText.PercentageinSix),
                            GreenBox2(
                                text1: GoVestText.InsurancePartner,
                                text2: GoVestText.LeadwayAssurance),
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GreenBox(
                                text1: GoVestText.CurrentCost,
                                text2: GoVestText.Amount10),
                            GreenBox2(
                              text1: GoVestText.PayoutType,
                              text2: GoVestText.Capital_Profit,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>BuyInvestmentScreen())
                        );
                      },
                      child: Container(
                        height: 50.sp,
                        width: 354.sp,
                        decoration: BoxDecoration(color: Color(0xff3B5AFB)),
                        child: Center(
                          child: Text(
                            GoVestText.BUYNOW,
                            style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GreenBox2 extends StatelessWidget {
  const GreenBox2({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.sp,
      width: 160.sp,
      decoration: BoxDecoration(
          color: Color(0xff0EB51F), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  text2,
                  style: TextStyle(
                      fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xffFFFFFF)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GreenBox extends StatelessWidget {
  const GreenBox({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.sp,
      width: 160.sp,
      decoration: BoxDecoration(
          color: Color(0xff0EB51F), borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontFamily: GoVestAssets.Type,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF),
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Text(
              text2,
              style: TextStyle(
                  fontFamily: GoVestAssets.Type,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xffFFFFFF)),
            )
          ],
        ),
      ),
    );
  }
}
