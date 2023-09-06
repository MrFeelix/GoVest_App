import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/CreateAccount/CreateaccountScreen.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>CreateaccountScreen())
                        );
                      },
                      child: Image.asset(GoVestAssets.Backarrow)),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                        ),
                        children: [
                          TextSpan(
                              text: GoVestText.Go,
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontFamily: GoVestAssets.Type)),
                          TextSpan(
                              text: GoVestText.Vest,
                              style: TextStyle(
                                  color: Color(0xff60F248),
                                  fontFamily: GoVestAssets.Type)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(GoVestText.Welcome,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoVestAssets.Type)),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(GoVestText.Login,
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoVestAssets.Type))
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Texty(
                  hint: GoVestText.Email,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Texty_icon(
                    hint: GoVestText.Password, imagepath: GoVestAssets.Hidden),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  GoVestText.ForgotPassword,
                  style: TextStyle(
                      fontFamily: GoVestAssets.Type,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 150.sp,
                ),
                GestureDetector(
                  onTap:() {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>InvestmentScreeen())
                    );
                  },
                  child: Container(
                    height: 55.sp,
                    width: 366.sp,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(GoVestText.SignMe, style: TextStyle(fontFamily: GoVestAssets.Type, fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
             Center(
               child: RichText(
                text: TextSpan(
                 children: [
                  TextSpan(
                    text: GoVestText.New, style: TextStyle(fontWeight: FontWeight.w600, fontFamily: GoVestAssets.Type, color: Color(0xffFFFFFF))
                  ),
              
                  TextSpan(
                    text: GoVestText.SignUp, style: TextStyle(fontFamily: GoVestAssets.Type, fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff000000))
                  )
                 ]
                ),
               ),
             )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Texty_icon extends StatelessWidget {
  const Texty_icon({
    super.key,
    required this.hint,
    required this.imagepath,
  });

  final String hint;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        isCollapsed: true,
        labelText: hint,
        labelStyle: TextStyle(
            color: Color(0xffC4C4C4),
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            fontFamily: GoVestAssets.Type),
        filled: true,
        fillColor: Color(0xffFFFFFF),
        suffixIcon: Image.asset(imagepath),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Color(0xffFFFFFF))),
      ),
    );
  }
}
