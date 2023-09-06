import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage3.dart';

class InvestmentPackage2 extends StatefulWidget {
  const InvestmentPackage2({super.key});

  @override
  State<InvestmentPackage2> createState() => _InvestmentPackage2State();
}

class _InvestmentPackage2State extends State<InvestmentPackage2> {
  List<String> items = [
    GoVestText.RealVest,
    GoVestText.AgroVest,
    GoVestText.ManuVest,
    GoVestText.HalalVest,
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                            children: [
                              TextSpan(
                                text: GoVestText.Vest,
                                style: TextStyle(
                                  color: Color(0xff0EB51F),
                                ),
                              ),
                              TextSpan(
                                text: GoVestText.In,
                                style: TextStyle(
                                  color: Color(0xff3B5AFB),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          GoVestText.Boldstep,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff979797)),
                        ),
                      ],
                    ),
                    Container(
                      height: 40.sp,
                      width: 40.sp,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                              color: Color(0xff000000).withOpacity(0.095),
                              width: 2.0)),
                      child: Image.asset(
                        GoVestAssets.Reciept,
                        color: Color(0xff3B5AFB),
                      ),
                    )
                  ],
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
                        fontSize: 18,
                        fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Image.asset(GoVestAssets.BlueNaira),
                        Text(
                          GoVestText.Amount5,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3B5AFB),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      GoVestText.TotalInput,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoVestAssets.Type,
                        color: Color(0xff979797),
                      ),
                    ),
                    Text(
                      GoVestText.TotalOnput,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoVestAssets.Type,
                        color: Color(0xff979797),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Container(
                  height: 120.sp,
                  width: 354.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff2A52E2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                GoVestText.KnowYou,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoVestAssets.Type,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text(
                              GoVestText.Proceed,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssets.Type,
                                color: Color(0xffDDDC24),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(GoVestAssets.Fam)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 329,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          isCollapsed: true,
                          labelText: 'Search',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Color(0xff979797),
                              fontFamily: GoVestAssets.Type),
                          filled: true,
                          fillColor: Color(0xffC4C4C4).withOpacity(0.3),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide(
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xffD8D8D8),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(GoVestAssets.FourBox)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 20,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Color(0xff3B5AFB)
                                    : Color(0xffFFFFFF),
                                borderRadius: current == index
                                    ? BorderRadius.circular(15.0)
                                    : BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 14,
                                    color: current == index
                                        ? Color(0xffFFFFFF)
                                        : Color(0xff3B5AFB),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>InvestmentPackage3())
                        );
                      },
                      child: Container(
                        height: 262.sp,
                        width: 148.sp,
                        decoration: BoxDecoration(
                          color: Color(0xff3B5AFB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              GoVestAssets.Corn,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, top: 20.0, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    GoVestText.CashewInvest,
                                    style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: GoVestAssets.Type,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: GoVestText.Thirteen,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffDDDC24),
                                            )),
                                        TextSpan(
                                          text: GoVestText.Returns,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color(
                                              0xffFFFFFF,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(GoVestAssets.WhiteNaira),
                                      Text(
                                        GoVestText.Amount6,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          fontFamily: GoVestAssets.Type,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Image.asset(GoVestAssets.WhiteNaira),
                                          Text(
                                            GoVestText.Amount7,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              fontFamily: GoVestAssets.Type,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        GoVestText.Perunit,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          fontFamily: GoVestAssets.Type,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                      Text(
                                        GoVestText.AvailableUnit,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          fontFamily: GoVestAssets.Type,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 262.sp,
                      width: 148.sp,
                      decoration: BoxDecoration(
                        color: Color(0xff3B5AFB),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            GoVestAssets.Chicken,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 20.0, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  GoVestText.PoultryInvestment,
                                  style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: GoVestAssets.Type,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: GoVestText.Thirteen,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffDDDC24),
                                          )),
                                      TextSpan(
                                          text: GoVestText.Returns,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color(
                                              0xffFFFFFF,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Image.asset(GoVestAssets.WhiteNaira),
                                    Text(
                                      GoVestText.Amount8,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                        fontFamily: GoVestAssets.Type,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Image.asset(GoVestAssets.WhiteNaira),
                                        Text(
                                          GoVestText.Amount9,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            fontFamily: GoVestAssets.Type,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      GoVestText.Perunit,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        fontFamily: GoVestAssets.Type,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                    Text(
                                      GoVestText.AvailableUnit,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        fontFamily: GoVestAssets.Type,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 15.sp,
                                      width: 40.sp,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Center(
                                        child: Text(
                                          GoVestText.SoldOut,
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontFamily: GoVestAssets.Type,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffF24848),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
