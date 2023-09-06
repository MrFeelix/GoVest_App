import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/TargetSavings.dart';

class GoSavings_Savings extends StatefulWidget {
  const GoSavings_Savings({super.key});

  @override
  State<GoSavings_Savings> createState() => _GoSavings_SavingsState();
}

class _GoSavings_SavingsState extends State<GoSavings_Savings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left:15.sp, right: 15.sp, top: 40.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon( Icons.close,color: Color(0xff3B5AFB), size: 35,),
              SizedBox(
                height: 20.sp,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(GoVestText.CreateGoSavingstext,
                  style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                          fontFamily: GoVestAssets.Type
                        ),),
              SizedBox(
                height: 15.sp,
              ),
              Text(GoVestText.CreateasafeLock,
              style: TextStyle(
                fontFamily: GoVestAssets.Type,
                fontSize: 12,
                fontWeight: FontWeight.w400
              ),)
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
               Container(
              height: 80.sp,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(GoVestAssets.Wallet, color: Color(0xffFFFFFF),),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         GoVestText.GOsavingsText,
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
                               fontSize: 12,
                               fontWeight: FontWeight.w400
                            ),
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
                    Image.asset(GoVestAssets.Wallet, color: Color(0xffFFFFFF),),
                    SizedBox(
                      width: 20.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>TargetSavingsScreen())
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GoVestText.GOsavingsText,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                               fontFamily: GoVestAssets.Type,
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
                                 fontSize: 12,
                                 fontWeight: FontWeight.w400
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
          )],
          ),
        ),
      ),
    );
  }
}