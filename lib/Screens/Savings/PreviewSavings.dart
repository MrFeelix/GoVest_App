import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/GoSave.dart';

class PreviewSavingsScreen extends StatefulWidget {
  const PreviewSavingsScreen({super.key});

  @override
  State<PreviewSavingsScreen> createState() => _PreviewSavingsScreenState();
}

class _PreviewSavingsScreenState extends State<PreviewSavingsScreen> {
  bool _switchValue = false;
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.close,
                  color: Color(0xff3B5AFB),
                  size: 35,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  GoVestText.FinishSettingUp,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: GoVestAssets.Type,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3B5AFB),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  GoVestText.FinalizeSavingsTarget,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 80.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xff0EB51F),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(GoVestAssets.Wallet),
                        SizedBox(
                          width: 20.sp,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GoVestText.TotalTargetFifty,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                GoVestText.ClosetoSixper,
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontFamily: GoVestAssets.Type,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  GoVestText.PreferredAmounttoSave,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      bottom: 5.0), // Adjust the padding as needed
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black, // Color of the bottom border
                        width: 2.0, // Width of the bottom border
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: '3,000',

                      labelStyle: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                      border: InputBorder.none, // Hide the default border
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  children: [
                    Text(
                      GoVestText.StartDate,
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontSize: 12,
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 110.sp,
                    ),
                    Text(
                      GoVestText.WithdrawalDate,
                      style: TextStyle(
                          color: Color(0xff979797),
                          fontSize: 12,
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 156.sp,
                      padding: EdgeInsets.only(
                          bottom: 5.0), // Adjust the padding as needed
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Color of the bottom border
                            width: 2.0, // Width of the bottom border
                          ),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: GoVestText.December,
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Color(0xff979797),
                          ),
                          labelStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoVestAssets.Type),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: 156.sp,
                      padding: EdgeInsets.only(
                          bottom: 5.0), // Adjust the padding as needed
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black, // Color of the bottom border
                            width: 2.0, // Width of the bottom border
                          ),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: GoVestText.December,
                          suffixIcon: Icon(
                            Icons.calendar_today,
                            size: 16,
                            color: Color(0xff979797),
                          ),
                          labelStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoVestAssets.Type),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10.sp,
                        fontFamily: GoVestAssets.Type),
                    children: [
                      TextSpan(
                        text: GoVestText.Willendin,
                        style: TextStyle(
                          color: Color(0xff979797),
                        ),
                      ),
                      TextSpan(
                        text: GoVestText.OneTwentyDays,
                        style: TextStyle(color: Color(0xff2A52E2)),
                      ),
                      TextSpan(
                        text: GoVestText.With,
                        style: TextStyle(
                          color: Color(0xff979797),
                        ),
                      ),
                      TextSpan(
                        text: GoVestText.Twelve,
                        style: TextStyle(
                          color: Color(0xff0EB51F),
                        ),
                      ),
                      TextSpan(
                        text: GoVestText.ReturnRate,
                        style: TextStyle(
                          color: Color(0xff979797),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  padding: EdgeInsets.only(
                      bottom: 5.0), // Adjust the padding as needed
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black, // Color of the bottom border
                        width: 2.0, // Width of the bottom border
                      ),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: GoVestText.SelectSource,
                      suffixIcon: Icon(
                        Icons.expand_more,
                        size: 38,
                        color: Color(0xff979797),
                      ),
                      labelStyle: TextStyle(color: Color(0xff979797),
                      fontFamily: GoVestAssets.Type,
                      fontSize: 12,
                      fontWeight: FontWeight.w700
                      ),
                      border: InputBorder.none, // Hide the default border
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
                      height: 20.sp,
                      decoration: BoxDecoration(
                        color: Color(0xff3B5AFB),
                        borderRadius: BorderRadius.circular(8),
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
                          fontFamily: GoVestAssets.Type,
                          fontSize: 11.sp,
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
                      height: 20.sp,
                      decoration: BoxDecoration(
                        color: Color(0xff979797),
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
                  height: 30.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>GoSaveScreen())
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color(0xff3B5AFB),
                    ),
                    child: Center(
                      child: Text(
                        GoVestText.CreateGoTarget,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: GoVestAssets.Type),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
