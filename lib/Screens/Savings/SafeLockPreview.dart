import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/SafeLockDayTen.dart';
import 'package:govest_clone/Screens/Savings/SavingsHistory.dart';

class SafeLockPreview extends StatefulWidget {
  const SafeLockPreview({super.key});

  @override
  State<SafeLockPreview> createState() => _SafeLockPreviewState();
}

class _SafeLockPreviewState extends State<SafeLockPreview> {
  bool _switchValue = false;
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      SafeLockDayTenScreen()));
                            },
                            child: Image.asset(
                              GoVestAssets.Cancel,
                              color: Color(0xff3B5AFB),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff3B5AFB).withOpacity(0.31),
                          ),
                          child: Icon(
                            Icons.lock,
                            color: Color(0xff3B5AFB),
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 20.sp,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GoVestText.Preview,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB),
                              ),
                            ),
                            Text(
                              GoVestText.SafeLockSchool,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff979797),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      GoVestText.DummyText2,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: GoVestAssets.Type,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      height: 325.sp,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Color(0xff3B5AFB)),
                      child: Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GoVestText.Fundxreturn,
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Container(
                              height: 2.sp,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4)),
                            ),
                            SizedBox(
                              height: 30.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  GoVestText.FundstoLock,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  GoVestText.ReturnRate,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(GoVestAssets.WhiteNaira),
                                    SizedBox(
                                      width: 5.sp,
                                    ),
                                    Text(
                                      GoVestText.Amount14,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Text(
                                  GoVestText.Zer0_fivePer,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2.sp,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  GoVestText.AmounttoReturn,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  GoVestText.PaybackDate,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(GoVestAssets.WhiteNaira),
                                    SizedBox(
                                      width: 5.sp,
                                    ),
                                    Text(
                                      GoVestText.Amount14,
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Text(
                                  GoVestText.DateOct,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 2.sp,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3)),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  GoVestText.LockDuration,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  GoVestText.Paybackinto,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  GoVestText.FifteenDays,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: GoVestAssets.Type,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(50.r)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 5.sp,
                                      ),
                                      Text(
                                        GoVestText.Code2,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: GoVestAssets.Type,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff3B5AFB)),
                                      ),
                                      SizedBox(
                                        width: 5.sp,
                                      ),
                                      Image.asset(GoVestAssets.Reload),
                                      SizedBox(
                                        width: 5.sp,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40.sp,
                          height: 25.sp,
                          decoration: BoxDecoration(
                            color: Color(0xff3B5AFB),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Switch(
                            value: _switchValue,
                            onChanged: (value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 260.sp,
                          child: Text(
                            GoVestText.IAuthorize,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.sp,
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40.sp,
                          height: 25.sp,
                          decoration: BoxDecoration(
                            color: Color(0xff979797),
                            borderRadius: BorderRadius.circular(30),
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
                          width: 260.sp,
                          child: Text(
                            GoVestText.IAcknowledge,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoVestAssets.Type,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SavingsHistory()));
                      },
                      child: Center(
                        child: Container(
                          width: 320.sp,
                          height: 60.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Color(0xff3B5AFB),
                          ),
                          child: Center(
                            child: Text(
                              "Create GoSafeLock",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
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
