import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/ChangePassword.dart';
import 'package:govest_clone/Screens/EditProfileScreen.dart';
import 'package:govest_clone/Screens/KYCSetup.dart';
import 'package:govest_clone/Screens/NextofKin.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
           child: Padding(
             padding: EdgeInsets.only(left:20.sp, right: 20.sp, top: 20.sp),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                Center(
                  child: Text(
                    GoVestText.MyProfile,
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(child: Image.asset(GoVestAssets.Person3)),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: Text(
                    GoVestText.Ganni,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Padding(
                   padding: EdgeInsets.only(left:20.sp),
                  child: Text(
                    GoVestText.ProfileSettings,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoVestAssets.Type,
                      color: Color(0xff979797),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 197.sp,
                  decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                     padding: EdgeInsets.only(left:10.sp, right: 10.sp, top: 20.sp),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context)=>EditProfileScreen())
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 40.sp,
                                width: 40.sp,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Icon(
                                    Icons.person_outline,
                                    size: 25,
                                    color: Color(0xff3B5AFB),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              Row(
                               
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Edit Profile",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: GoVestAssets.Type,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Text(
                                        "Update your personal informations.",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: GoVestAssets.Type,
                                          color: Color(0xffBFBFE3),
                                        ),
                                      )
                                    ],
                                  ),
                                 
                                 
                                ],
                              ),
                              Spacer(),
                             Icon(
                                    Icons.chevron_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
                            
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context)=>NextofKin())
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 40.sp,
                                width: 40.sp,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0)),
                                child: Center(
                                  child: Icon(
                                    Icons.sentiment_satisfied,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Next of Kin Update",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: GoVestAssets.Type,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Text(
                                        "Update your closest relative information.",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: GoVestAssets.Type,
                                          fontWeight: FontWeight.w500,
                                           color: Color(0xffBFBFE3),
                                        ),
                                      )
                                    ],
                                  ),
                                  
                                 
                                ],
                              ),
                              Spacer(),
                             Icon(
                                    Icons.chevron_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                           onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context)=>KYCSetupScreen())
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 40.sp,
                                width: 40.sp,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0)),
                                child: Center(
                                  child: Image.asset(
                                    GoVestAssets.Folder,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "KYC Update",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: GoVestAssets.Type,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Text(
                                        "Update your valid means of Identification.",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: GoVestAssets.Type,
                                           color: Color(0xffBFBFE3),
                                        ),
                                      )
                                    ],
                                  ),
                                 
                                 
                                ],
                              ),
                              Spacer(),
                            Icon(
                                    Icons.chevron_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
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
                  padding: EdgeInsets.only(left:20.sp),
                  child: Text(
                    "General Settings",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoVestAssets.Type,
                        color: Color(0xff979797)),
                  ),
                ),
                 SizedBox(
                  height: 10.sp,
                ),
                Container(
                  height: 155.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left:10.sp, right: 10.sp, top: 20.sp),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context)=>ChangePasswordScreen())
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 40.sp,
                                width: 40.sp,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0)),
                                child: Center(
                                    child: Icon(
                                  Icons.lock,
                                  size: 25.sp,
                                  color: Colors.white,
                                )),
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Update Authentication",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: GoVestAssets.Type,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Text(
                                        "Change password",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: GoVestAssets.Type,
                                           color: Color(0xffBFBFE3),
                                        ),
                                      )
                                    ],
                                  ),
                                 
                                  
                                ],
                              ),
                              Spacer(),
                           Icon(
                                    Icons.chevron_right,
                                    size: 25,
                                    color: Colors.white,
                                  )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0)),
                              child: Center(
                                child: Icon(
                                  Icons.headset,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Help and Support",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoVestAssets.Type,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.sp,
                                    ),
                                    Text(
                                      "Contact support and the help desk",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: GoVestAssets.Type,
                                        fontWeight: FontWeight.w500,
                                         color: Color(0xffBFBFE3),
                                      ),
                                    )
                                  ],
                                ),
                               
                                
                              ],
                            ),
                            Spacer(),
                         Icon(
                                  Icons.chevron_right,
                                  size: 25,
                                  color: Colors.white,
                                )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
              ],
                   ),
           ),
        ),
      ),
      );
  }
}