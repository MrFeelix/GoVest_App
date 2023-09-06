import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/SafeLockPreview.dart';
import 'package:govest_clone/Screens/TransactionHistory.dart';

class SavingsHistory extends StatefulWidget {
  const SavingsHistory({super.key});

  @override
  State<SavingsHistory> createState() => _SavingsHistoryState();
}

class _SavingsHistoryState extends State<SavingsHistory> {
   bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 325.sp,
                decoration: BoxDecoration(color: Color(0xff3B5AFB)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext context)=>SafeLockPreview())
                              );
                            },
                            child: Icon(
                              Icons.close,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 80.sp,
                          ),
                          Text(
                           GoVestText.OverView,
                            style: TextStyle(
                              fontSize: 22.sp,
                               fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        GoVestText.YourTargetSavings,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            fontFamily: GoVestAssets.Type,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(GoVestAssets.BigWhiteNaira),
                          SizedBox(
                            width: 2.sp,
                          ),
                          Text(
                            GoVestText.Amount16,
                            style: TextStyle(
                                fontSize: 32.sp,
                                 fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "/",
                            style: TextStyle(
                                fontSize: 14.sp,
                                 fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            GoVestText.Amount15,
                            style: TextStyle(
                                fontSize: 16.sp,
                                 fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Container(
                        height: 15.sp,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Container(
                              height: 15.sp,
                              width: 66.sp,
                              decoration: BoxDecoration(
                                  color: Color(0xff0EB51F),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            GoVestText.FourtytwoDays,
                            style: TextStyle(color: Colors.white,
                             fontFamily: GoVestAssets.Type,),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.sp,
                            height: 20.sp,
                            decoration: BoxDecoration(
                              color: Color(0xff3B5AFB),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Switch(
                              value: _switchFunction,
                              onChanged: (value) {
                                setState(() {
                                  _switchFunction = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 40.sp,
                          ),
                          Text(
                            GoVestText.AutoSave,
                            style: TextStyle(
                                fontSize: 12.sp,
                                 fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff3B5AFB),
                      ),
                      child: Center(
                        child: Text(
                         GoVestText.SaveNow,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          GoVestText.SavingsHistory,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: GoVestAssets.Type,
                              color: Color(0xff979797)),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context)=>TransactionHistoryScreen())
                            );
                          },
                          child: Text(
                            GoVestText.SeeMore,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoVestAssets.Type,
                                color: Color(0xff979797)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    HistoryWidget(),
                    SizedBox(
                      height: 20.sp,
                    ),
                    HistoryWidget(),
                    SizedBox(
                      height: 20.sp,
                    ),
                    HistoryWidget(),
                    SizedBox(
                      height: 20.sp,
                    ),
                    HistoryWidget(),
                    SizedBox(
                      height: 20.sp,
                    ),
                    HistoryWidget(),
                    SizedBox(
                      height: 20.sp,
                    ),
                    HistoryWidget(),
                    SizedBox(
                      height: 20.sp,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],),
          ),
      ),);
  }
}

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
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
                  color: Color(0xff0EB51F),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Icon( Icons.trending_down, ),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GoVestText.SaveFromWallet,
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
        