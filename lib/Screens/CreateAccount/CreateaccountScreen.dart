import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Login/Login.dart';
import 'package:govest_clone/Screens/OnBoardingScreens/OnBoardingScreen3.dart';

class CreateaccountScreen extends StatefulWidget {
  const CreateaccountScreen({super.key});

  @override
  State<CreateaccountScreen> createState() => _CreateaccountScreenState();
}

class _CreateaccountScreenState extends State<CreateaccountScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left:15.0, right: 15),
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
                    MaterialPageRoute(builder: (BuildContext context)=>OnBoardingScreen3())
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
                    text:GoVestText.Go,
                    style: TextStyle(color: Color(0xffFFFFFF),fontFamily: GoVestAssets.Type)
                  ),
                  TextSpan(
                    text: GoVestText.Vest,
                    style: TextStyle(color: Color(0xff60F248),fontFamily: GoVestAssets.Type)
                  ),
                 ] , 
                  ),
                 )
                  ],
                ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.sp,
                ),
                  Text(GoVestText.Hello, style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16, fontWeight: FontWeight.w500, fontFamily: GoVestAssets.Type ),),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Text(GoVestText.Titan, style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20, fontWeight: FontWeight.w500, fontFamily: GoVestAssets.Type))
              ],
             ),
             SizedBox(
              height: 20.sp,
             ),
               Row(
                 children: [
                   SizedBox(
                    width: 182,
                     child: Texty(hint: GoVestText.Firstname),
                   ),
                   Spacer(),
              SizedBox(
                        width: 182,
                    child: Texty(hint: GoVestText.Lastname)),
                 ],
               ),
              SizedBox(
                height: 20.sp,
              ),
            Texty(hint: GoVestText.Phone),
            SizedBox(
              height: 20.sp,
            ),
            Texty(hint: GoVestText.Email),
            SizedBox(
              height: 20.sp,
            ),
            Texty(hint: GoVestText.Password),
      
            SizedBox(
              height: 20.sp,
            ),
            
            Texty(hint: GoVestText.Comfirm),
            
            SizedBox(
              height: 20.sp,
            ),
      
          Texty_icon(hint: GoVestText.ReferralCode, imagepath: GoVestAssets.Tag),
            SizedBox(
              height: 3.sp,
            ),
            Row(
              children: [
                Image.asset(GoVestAssets.Exclam),
                SizedBox(
                  width: 3.sp,
                ),
                Text(GoVestText.Reward, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, fontFamily: GoVestAssets.Type, color: Color(0xffFFFFFF)),)
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 270,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          fontFamily: GoVestAssets.Type
                        ),
                     children: [
                      TextSpan(
                        text: GoVestText.Agreement,
                        style: TextStyle(color: Color(0xffFFFFFF))
                      ),
                    
                    TextSpan(
                      text: GoVestText.Terms,
                      style: TextStyle(color: Color(0xff000000)
                                  )
                    )
                     ]
                     
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
           Center(
             child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>LoginScreen())
                );
              },
               child: Container(
                height: 55,
                width: 366,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Color(0xffFFFFFF))
                ),
                         child: Center(child: Text(GoVestText.Family, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, fontFamily: GoVestAssets.Type, color: Color(0xffFFFFFF)),)),
               ),
             ),
           ),
           SizedBox(
            height: 15.sp,
           ),
            Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoVestAssets.Type
                  ),
                children: [
                  TextSpan(
                    text: GoVestText.Family1,
                    style: TextStyle(color: Color(0xffFFFFFF))
                  ),
                TextSpan(
                  text: GoVestText.Sign,
                  style: TextStyle(color: Color(0xff000000))
                )
            
                ]
                
                ),
              ),
            ),
            SizedBox(
              height: 40.sp,
            )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Texty extends StatelessWidget {
  const Texty({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:30,vertical: 18),
     isCollapsed: true,
     labelText: hint,
     labelStyle: TextStyle(
         color: Color(0xffC4C4C4),
         fontSize: 14.0,
         fontWeight: FontWeight.w400,
         fontFamily: GoVestAssets.Type),
     filled: true,
     fillColor: Color(0xffFFFFFF),
     enabledBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(5),
         borderSide: BorderSide(color: Color(0xffFFFFFF))),
    ),
          );
  }
}