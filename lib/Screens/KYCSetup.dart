import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage.dart';

class KYCSetupScreen extends StatefulWidget {
  const KYCSetupScreen({super.key});

  @override
  State<KYCSetupScreen> createState() => _KYCSetupScreenState();
}

class _KYCSetupScreenState extends State<KYCSetupScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52),
              topRight: Radius.circular(52),
            ),
          ),
          // Content of the bottom sheet
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(top: 10.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          GoVestText.VerifyBVN,
                          style: TextStyle(
                            color: Color(0xff3B5AFB),
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        SizedBox(
                            width: 340.sp,
                            child: Text(
                              GoVestText.OTP,
                              style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff414141)),
                            )),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Text(
                          GoVestText.EnterOTP,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoVestAssets.Type,
                              color: Color(0xffc4c4c4)),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              isCollapsed: true,
                              labelText: "275963",
                              labelStyle: TextStyle(
                                color: Color(0xff3B5AFB),
                                fontSize: 14.0,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w500,
                              ),
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                borderSide: BorderSide(
                                    color: Color(0xff6E6E71), width: 1.sp),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Text(
                          GoVestText.EnterGovestPass,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: GoVestAssets.Type,
                              color: Color(0xffc4c4c4)),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              isCollapsed: true,
                              labelText: "****",
                              labelStyle: TextStyle(
                                color: Color(0xff3B5AFB),
                                fontSize: 14.0,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w500,
                              ),
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.r),
                                borderSide: BorderSide(
                                    color: Color(0xff6E6E71), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 36.sp),
                        Container(
                          height: 60.sp,
                          width: 300.sp,
                          decoration: BoxDecoration(
                              color: Color(0xff3B5AFB),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text(
                              GoVestText.VerifyBVN,
                              style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 1
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>InvestmentScreeen())
                    );
                  },
                  child: Icon(Icons.chevron_left, color: Color(0xffffffff), size: 30.sp)),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 200.sp,
                  child: Text(
                    GoVestText.VerifyIdentity,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      fontFamily: GoVestAssets.Type,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                    width: 300.sp,
                    child: Text(
                      GoVestText.VerifyIdentityWithGovest,
                      style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff)),
                    )),
                SizedBox(
                  height: 20.sp,
                ),
                GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: Container(
                    height: 167.sp,
                    width: 352.sp,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 66),
                          child: Text(
                            GoVestText.WhyweaskBVN,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB)),
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(GoVestAssets.Guard),
                              SizedBox(
                                  width: 250.sp,
                                  child: Text(
                                    GoVestText.ConfirmIdentity,
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoVestAssets.Type,
                                        color: Color(0xff979797)),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: GoVestText.OyaConnectBVN,
                      labelStyle: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20.sp,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700)),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  GoVestText.EnterBVN,
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssets.Type,
                      color: Color(0xffffffff)),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      isCollapsed: true,
                      labelText: "23457876321",
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.r),
                        borderSide:
                            BorderSide(color: Color(0xff6E6E71), width: 1.sp),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.sp,
                ),
                Text(
                  GoVestText.BVNVerified,
                  style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffffffff),
                  ),
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
