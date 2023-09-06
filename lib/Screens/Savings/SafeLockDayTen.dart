import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/GoSafeLock.dart';
import 'package:govest_clone/Screens/Savings/SafeLockPreview.dart';

class SafeLockDayTenScreen extends StatefulWidget {
  const SafeLockDayTenScreen({super.key});

  @override
  State<SafeLockDayTenScreen> createState() => _SafeLockDayTenScreenState();
}

class _SafeLockDayTenScreenState extends State<SafeLockDayTenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  GoSafeLockScreen()),
                        );
                      },
                      child: Image.asset(
                        GoVestAssets.Cancel,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
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
                    Text(
                      GoVestText.SafeLockForTen_Thirty,
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                          fontFamily: GoVestAssets.Type),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 310,
                  child: Text(
                    GoVestText.CreateasafeLock,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontFamily: GoVestAssets.Type),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  GoVestText.HowMuch,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                    fontFamily: GoVestAssets.Type,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black, // Color of the bottom border
                        width: 1.3, // Width of the bottom border
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '200,000',
                      prefixIcon: Image.asset(
                          GoVestAssets.MediumBlackNaira), // Placeholder text
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: GoVestAssets.Type,
                          fontSize: 22,
                          fontWeight:
                              FontWeight.w700), // Color of the label text
                      border: InputBorder.none, // Hide the default border
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Container(
                      height: 12.sp,
                      width: 12.sp,
                      decoration: BoxDecoration(
                          color: Color(0xff0EB51F),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.done,
                        size: 12,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      GoVestText.Typeinamount,
                      style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff979797)),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  GoVestText.SetTitle,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                    fontFamily: GoVestAssets.Type,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.3,
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: GoVestText.EmergencyFunds,
                      labelStyle: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  GoVestText.Payback,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  GoVestText.HigerReturns,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.3,
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.calendar_today,
                        color: Color(0xff979797),
                        size: 20.sp,
                      ),
                      labelText: GoVestText.DateOct,
                      labelStyle: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: GoVestAssets.Type,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.sp,
                ),
                Row(
                  children: [
                    Image.asset(GoVestAssets.GreenWave),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(
                      GoVestText.YourReturns,
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: GoVestAssets.Type,
                          color: Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  GoVestText.SelectSource,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssets.Type,
                      color: Color(0xff979797)),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 5.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.3,
                      ),
                    ),
                  ),
                  child: TextFormField(
                      decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff979797),
                      size: 30.sp,
                    ),
                    labelText: GoVestText.WalletBalance,
                    labelStyle: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: GoVestAssets.Type,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                    border: InputBorder.none,
                  )),
                ),
                SizedBox(
                  height: 50.sp,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              SafeLockPreview()));
                    },
                    child: Container(
                      width: 320.sp,
                      height: 60.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff3B5AFB),
                      ),
                      child: Center(
                        child: Text(
                          GoVestText.PreviewGOsafe,
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
                ),
                SizedBox(
                  height: 20.sp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
