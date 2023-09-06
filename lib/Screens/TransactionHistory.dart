import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage.dart';
import 'package:govest_clone/Screens/NextofKin.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({super.key});

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>InvestmentScreeen())
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>NextofKin())
                        );
                      },
                      child: Text(
                        GoVestText.TransactionHistoryText,
                        style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Color(0xff3B5AFB)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                    isCollapsed: true,
                    labelText: GoVestText.QuickFind,
                    labelStyle: TextStyle(
                        color: Color(0xff4E4E4E),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoVestAssets.Type),
                    filled: true,
                    fillColor: Color(0xffEEEEEE),
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Invest(),
                SizedBox(
                  height: 15.sp,
                ),
                Withdraw(),
                SizedBox(
                  height: 15.sp,
                ),
                Withdraw(),
                SizedBox(
                  height: 15.sp,
                ),
                Invest(),
                SizedBox(
                  height: 15.sp,
                ),
                Withdraw(),
                SizedBox(
                  height: 15.sp,
                ),
                Withdraw(),
                SizedBox(
                  height: 15.sp,
                ),
                Invest(),
                SizedBox(
                  height: 15.sp,
                ),
                Withdraw(),
                SizedBox(
                  height: 15.sp,
                ),
                Withdraw(),
                SizedBox(
                  height: 25.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Withdraw extends StatelessWidget {
  const Withdraw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 45.sp,
              width: 45.sp,
              decoration: BoxDecoration(
                  color: Color(0xff0EB51F).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Icon(
                Icons.trending_down,
              ),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GoVestText.Withdrawalfromsavings,
                  style: TextStyle(
                    color: Color(0xff3B5AFB),
                    fontSize: 12.sp,
                    fontFamily: GoVestAssets.Type,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  GoVestText.December,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff979797)),
                )
              ],
            ),
          ],
        ),
        Text(
          GoVestText.HashtagFifty,
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: GoVestAssets.Type,
            fontWeight: FontWeight.w700,
            color: Color(0xff0EB51F),
          ),
        )
      ],
    );
  }
}

class Invest extends StatelessWidget {
  const Invest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 45.sp,
              width: 45.sp,
              decoration: BoxDecoration(
                  color: Color(0xffFFC1CC),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Icon(
                Icons.trending_up,
              ),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GoVestText.InvestInFishFarming,
                  style: TextStyle(
                    color: Color(0xff3B5AFB),
                    fontSize: 12.sp,
                    fontFamily: GoVestAssets.Type,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  GoVestText.December,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff979797)),
                )
              ],
            ),
          ],
        ),
        Text(
          GoVestText.HashTagTwoFifty,
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: GoVestAssets.Type,
            fontWeight: FontWeight.w700,
            color: Color(0xffB50E18),
          ),
        )
      ],
    );
  }
}
