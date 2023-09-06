import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Screens/EditProfileScreen.dart';
import 'package:govest_clone/Screens/Myprofile.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xff3B5AFB)),
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context)=>MyProfileScreen())
                  );
                },
                child: Icon(
                  Icons.chevron_left,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Center(
                  child: Text(
                "Change Password",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoVestAssets.Type,
                    color: Colors.white),
              ),),
              SizedBox(
                height: 10.sp,
              ),
              Center(
                child: SizedBox(
                  width: 300.sp,
                  child: Text(
                    "Your new password must be different from your old password.",
                    style: TextStyle(
                        fontSize: 12.sp,
                         fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 50.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.white),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Current Password",
                      hintStyle: TextStyle(color: Color(0xff979797),
                       fontFamily: GoVestAssets.Type,),
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.visibility_off,
                          size: 20, color: Color(0xff3B5AFB))),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              EditTextfield(name: "Enter New Password"),
              SizedBox(
                height: 20.sp,
              ),
              EditTextfield(name: "Confirm New Password"),
              SizedBox(
                height: 90.sp,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 42.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Change Password",
                    style:
                        TextStyle(fontSize: 14.sp, color: Color(0xff3B5AFB),
                         fontFamily: GoVestAssets.Type,),
                  ),
                ),
              )
            ],
          ),
        ),
          ),
        ),

        ),
      );

  }
}